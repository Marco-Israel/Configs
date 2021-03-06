#!/bin/bash


_usage() {
cat <<-EOF

                "${0##*/}"
################################################################################

@author    Marco Israel (MI)
@date      2020-01
@authors   Last changed by:  Marco Israel - 2020.


@brief     Build an ready to use SDCard/HDD/MMC image

@detail:
  Builds an SDCard/HDD/MMC image with different partions and prepare it
  with the needed conten. Note e2fsprogs with an realease after yar 2020
    required.


  USAGE:
 "${0##*/} -p <label:type:size:conten_source>  [-p <...>]  [-o <outpath/name>]"

 -p    Create a new partion. MUST at least given once; CAN be used multiple
       times. The parts between : will be interpreted as follows:
           label:  Name of the partion to create
           type:   Partion type to create. See man mke2fs
           size:   Size of the new partion in MiB (Mebibytes)
           content_source:     Optional. Content to copy into the partion root.

 -o    Outputpatch and name where to create the image with name.

 -h    Show this help.

@example:  Create an image with two partions at a given location. Copy files
           files into the first one directly.

           user@machine: thisSrcipt.sh -p part1:ext2:47:/tmp/someDir
                               \ -p part1:ext2:47
                               \ -o /tmp/out.img

@note:     Currently the partion size can only be in unit 'MiB' (Mebibytes).

################################################################################
# END OF HELP.

EOF
}


################################################################################
#File Global Variables
declare _PATH_OUT="./misImage.img"
declare -i _PARTION_COUNT=0
declare -a _PARTION_LABEL=""
declare -a _PARTION_TYPE=""
declare -a _PARTION_SIZE="0"
declare -a _PARTION_CONTENT_SOURCE=""
declare -i _PARTION_TABLE_SIZE=63
declare -i _IMAGE_BLOCK_SIZE=512


################################################################################
#Local Functions

_getImagesize () {
    local -i SIZE_IMAGE=0
    for i in ${_PARTION_SIZE[*]}
    do
        SIZE_IMAGE=$((${SIZE_IMAGE}+$i))
    done

    echo $SIZE_IMAGE
}


_creatPartion () {
# Parameters are as follows :
# $1 == PARTION_ID          (Int)
# $2 == SECTOR_START        (Int)
# $3 == PARTION_BOOTFLAG    ("bootable" or left empty)

    local TYP="NONE"

    case "${_PARTION_TYPE[$1]}" in
        ext2 | ext3 | ext4 )
            TYP="83"
            ;;
        vfat | fat | fat32 | dos )
            TYP="c"
            ;;
         * )
             echo ""
             echo "File system TYPE NOT SUPPORTED"
             echo "Scripts exists now with error"
             echo ""
             _usage
             exit 1
             ;;
        esac

        sfdisk -N $(( $1==0 ? $1 : $1 +1 )) $_PATH_OUT <<-EOF
start=$2, size=${_PARTION_SIZE[$1]}, type=$TYP, name="${_PARTION_LABEL[$1]}", $3
EOF
}


_createFilesystem () {
    local TMPIMAGE=".mistmpFS.img"
    local -i TMPOFFSET=${_PARTION_TABLE_SIZE}

    for (( PID=0; PID<${_PARTION_COUNT}; ++PID )); do

        dd if=/dev/zero of="${TMPIMAGE}"                                       \
            bs=${_IMAGE_BLOCK_SIZE} count=${_PARTION_SIZE[$PID]}

        case "${_PARTION_TYPE[$PID]}" in
            ext2 | ext3 | ext4 )

            local -i EXTBLOCKSIZE=1024
            local -i INOUTCOUNT=128
            mke2fs -d "${_PARTION_CONTENT_SOURCE[$PID]}"                       \
                -t ${_PARTION_TYPE[$PID]} -L "${_PARTION_LABLE[$PID]}" -N 0    \
                -I 128 -i ${EXTBLOCKSIZE} -b ${EXTBLOCKSIZE} "${TMPIMAGE}"     \
                $(( ${_PARTION_SIZE[$PID]}                                     \
                    / ${EXTBLOCKSIZE} * ${_IMAGE_BLOCK_SIZE} ))
                ;;
            vfat | fat | fat32 | dos )
                mkfs.vfat -S ${_IMAGE_BLOCK_SIZE} -n ${_PARTION_LABLE[$PID]}   \
                    -C "${TMPIMAGE}"
                mcopy -i "${TMPIMAGE}" ${_PARTION_CONTENT_SOURCE[$PID]}/* ::/
                ;;
        esac

       dd if=${TMPIMAGE} of=${_PATH_OUT} bs=${_IMAGE_BLOCK_SIZE} conv=notrunc  \
            count=${_PARTION_SIZE[$PID]} seek=${TMPOFFSET}

        ((TMPOFFSET+=${_PARTION_SIZE[$PID]} ))

        cp "${TMPIMAGE}" "${TMPIMAGE}""$PID"
        rm -f "${TMPIMAGE}" 2>/dev/zero

    done
}


_createImage () {
    local -i SIZE_IMAGE=$(_getImagesize)
    local -i OFFSET_START=${_PARTION_TABLE_SIZE}


    dd if=/dev/zero of="${_PATH_OUT}" bs="${_IMAGE_BLOCK_SIZE}"                \
        count=$(( $SIZE_IMAGE + ${_PARTION_TABLE_SIZE} ))


    _creatPartion 0 ${OFFSET_START} bootable


   ((OFFSET_START+=${_PARTION_SIZE[0]}))

    for (( i=1; i<${_PARTION_COUNT}; ++i))
    do
        _creatPartion $(($i)) ${OFFSET_START}

        (( OFFSET_START+=${_PARTION_SIZE[$i]} ))
    done

   echo ${OFFSET_START}
}


_printPartions () {
    for (( i=0; i<${_PARTION_COUNT}; ++i)); do
        echo "-----------------"
        echo "ID:       $i"
        echo "Label:    ${_PARTION_LABEL[$i]}"
        echo "Type:     ${_PARTION_TYPE[$i]}"
        echo "Size:     $(( ${_PARTION_SIZE[$i]} / 2**11 ))"
        echo "Source:   ${_PARTION_CONTENT_SOURCE[$i]}"
        echo "-----------------"
    done

    local res=$(_getImagesize)
    echo "Image size:   $(( $res / 2**11 ))"
    echo "-----------------"

}


_extractPartionValues () {
    local tmpIFS=$IFS
    IFS=':' read -ra INPUT <<<"$1"
    IFS=$tmpIFS

    if [ ${_PARTION_COUNT} -eq 0 ]
    then
        _PARTION_LABEL=${INPUT[0]}
        _PARTION_TYPE=${INPUT[1]}
        _PARTION_SIZE=$(( ${INPUT[2]} * 2**11 ))
        _PARTION_CONTENT_SOURCE=${INPUT[3]}
    else
        _PARTION_LABEL+=(${INPUT[0]})
        _PARTION_TYPE+=(${INPUT[1]})
        _PARTION_SIZE+=( $(( ${INPUT[2]} * 2**11 )) )
        _PARTION_CONTENT_SOURCE+=(${INPUT[3]})
    fi

    (( _PARTION_COUNT++ ))
}


_getopts () {

while getopts "h:o:p:" OPT
 do
     case "${OPT}" in
         o)
             _PATH_OUT=${$OPTARG}
             ;;
         p)
             _extractPartionValues ${OPTARG}
             ;;
         h | \?)  _usage
             ;;
     esac
done
shift $((OPTIND -1))
}


##### MAIN #####################################################################

if [ "$#" -gt 0 ]
then

    _getopts "$@"
    _printPartions
    _createImage
    _createFilesystem

else
   _usage

fi

##### EOF ######################################################################
