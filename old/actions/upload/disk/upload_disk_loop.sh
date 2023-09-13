#!/bin/bash

MINFREE=11000000
MNTNAME=$1
echo loop start

for (( ; ; ))
do
    #/opt/plot.worker/actions/mount/disk/mount_usb.sh

    /opt/plot.worker/actions/upload/disk/upload_disk_iter.sh 1 $MNTNAME
    /opt/plot.worker/actions/upload/disk/upload_disk_iter.sh 2 $MNTNAME
    /opt/plot.worker/actions/upload/disk/upload_disk_iter.sh 3 $MNTNAME
    /opt/plot.worker/actions/upload/disk/upload_disk_iter.sh 4 $MNTNAME

    #/opt/plot.worker/actions/mount/smb/umount_smb.sh $MNTNAME  
    sleep 300
done

