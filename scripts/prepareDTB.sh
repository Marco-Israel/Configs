#!/bin/bash

#DTS=am335x-telair
DTS=telair-am335x
#DTS=am335x-mba335x

gcc -I. -I include/ -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp     \
    -o tmp.dts "$DTS".dts

dtc -I dts -O dtb tmp.dts -o "$DTS".dtb
dtc -I dts -O dts tmp.dts -o /tmp/"$DTS"_compiled.dts

cp $DTS.dtb /media/ptxdist/boot/telair-am335x.dtb

sudo ls -la /media/ptxdist/boot/

sudo umount /dev/sdb[1-2]
