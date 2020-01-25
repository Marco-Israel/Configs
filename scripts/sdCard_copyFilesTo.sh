#!/bin/bash


if [ ! "$1" = "/dev/sda" ] ; then
  DRIVE=$1
  SRC=$2

  sudo mount $DRIVE"1" /mnt
  sudo cp $SRC/MLO /mnt
  sudo cp $SRC/u-boot.img /mnt
  sudo cp $SRC/uImage /mnt
  ls -la /mnt/
  sudo umount $DRIVE"1"

  sudo mount $DRIVE"2" /mnt
  sudo tar zxf $SRC/root.tgz -C /mnt
  ls -la /mnt/
  sudo umount $DRIVE"2"

  sync
  echo "Finished"
fi
