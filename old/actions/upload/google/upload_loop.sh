#!/bin/bash

MNTNAME=$1
echo loop start

for (( ; ; ))
do
    #replace -> mount $MNTNAME,not all

    #/opt/plot.worker/actions/mount/google/mount_disk_all.sh
    /opt/plot.worker/actions/upload/google/upload.sh 3 $MNTNAME
    sleep 30

    #/opt/plot.worker/actions/mount/google/mount_disk_all.sh
    /opt/plot.worker/actions/upload/google/upload.sh 1 $MNTNAME
    sleep 30

    #/opt/plot.worker/actions/mount/google/mount_disk_all.sh
    /opt/plot.worker/actions/upload/google/upload.sh 2 $MNTNAME
    sleep 30

    #/opt/plot.worker/actions/mount/disk/mount_disk_all.sh
    /opt/plot.worker/actions/upload/google/upload.sh 4 $MNTNAME
    sleep 30

    sleep 300

done

