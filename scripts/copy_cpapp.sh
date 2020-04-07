#/bin/bash

if [ $1 ]
then
    DRIVER=$1
else
    DRIVER="/dev/sdb"
fi

sudo umount $DRIVER"2"
sudo mount $DRIVER"2" /mnt/rootfs

ptxdist clean telair-cp_790760_1
ptxdist targetinstall telair-cp_790760_1

sudo ls -la ./platform-MBa335x/build-target/telair-cp_790760_1-build/CP_790760_1

sudo cp ./platform-MBa335x/build-target/telair-cp_790760_1-build/CP_790760_1 \
    /mnt/rootfs/usr/bin/CP_790760_1

sudo ls -la /mnt/rootfs/usr/bin/CP_790760_1

sudo umount $DRIVER"2"
echo "Finished"



##########  EOF  ###############################################################





