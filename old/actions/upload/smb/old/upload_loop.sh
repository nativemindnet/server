#!/bin/bash

MNTNAME=$1
echo loop start


for (( ; ; ))
do
    #replace -> mount $MNTNAME,not all

    /opt/plot.worker/actions/mount/smb/mount_smb.sh $MNTNAME
    /opt/plot.worker/actions/upload/smb/upload.sh 3 $MNTNAME
    sleep 30

    /opt/plot.worker/actions/mount/smb/mount_smb.sh $MNTNAME
    /opt/plot.worker/actions/upload/smb/upload.sh 1 $MNTNAME
    sleep 30

    /opt/plot.worker/actions/mount/smb/mount_smb.sh $MNTNAME
    /opt/plot.worker/actions/upload/smb/upload.sh 2 $MNTNAME
    sleep 30

    /opt/plot.worker/actions/mount/smb/mount_smb.sh $MNTNAME
    /opt/plot.worker/actions/upload/smb/upload.sh 4 $MNTNAME
    sleep 30

    sleep 300

done

