#!/bin/bash

echo upload_disk_iter

PROCNUM=$1
MNTNAME=$2


#/opt/plot.worker/actions/mount/disk/mount_disk_all.sh
/opt/plot.worker/actions/upload/disk/upload_disk.sh $PROCNUM $MNTNAME
sleep 30
