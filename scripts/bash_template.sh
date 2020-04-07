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

if [ "$#" -gt 1 ]
then

while test $# -gt 0

    do
        case "$1" in
            --opt1) echo "option 1"
                ;;
            --opt2) echo "option 2"
                ;;
            --*) echo "bad option $1"
                ;;
            *) echo "argument $1"
                ;;
        esac
        shift
    done

else
    echo "#####################################################################"
    echo ""
    echo "USAGE:"
    echo "${0##*/} < >  [<>]  [<>]"
    echo ""
    echo "#####################################################################"
fi

##### EOF ######################################################################
