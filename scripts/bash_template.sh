#!/bin/bash
#
################################################################################
#
#@author    Marco Israel (MI)
#@date      2020-01
#@authors   Last changed by:  Marco Israel - 2020.
#
#
#@brief     Builds an u-boot uImage from an zImage.
#@details   The bootloader u-boot needs an zImage with some additional header
#           information. Thats why it looks for an uImage which is such an
#           zImage with the additional information.
#
################################################################################


VAR1="TODO"
VAR2=$VAR1
VAR3=$VAR1


_usage() {
cat <<-EOF


--------------------------------------------------------------------------------

                "${0##*/}"

  ABOUT:
This is only an template script script. TODO edit this TODO.


  USAGE:
"${0##*/} < >  [<>]  [<>]"


--------------------------------------------------------------------------------

EOF
}


_getopts() {

#while getopts "h:n:o:p:" OPT
#do
#	case "$OPT" in
#	h)  _usage
#		exit 1
#		;;
#	o) IMAGEFILE="$OPTARG"
#	    ;;
#	p)  partcount=$(($partcount + 1))
#	    PART[$partcount]="$OPTARG"
#	    ;;
#	esac
#done


while [ $# -gt 0 ]
    do
        case "$1" in
            01 | --opt1)
                echo "TODO"
                ;;
            O2 | option2)
				echo "TODO"
                ;;
            *) echo TODO
                echo "TODO"
                ;;
        esac
        shift
    done
}


##### MAIN #####################################################################

if [ "$#" -gt 1 ]
then

    _getopts "$@"

else
   _usage

#    echo "#####################################################################"
#    echo ""
#    echo "USAGE:"
#    echo "${0##*/} [<serach-engin>] \"<search string>\""
#    echo ""
#    echo "#####################################################################"
fi

##### EOF ######################################################################
