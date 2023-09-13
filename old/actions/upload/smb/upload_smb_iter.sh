#!/bin/bash

echo upload_disk_iter

PROCNUM=$1
MNTNAME=$2


#/opt/plot.worker/actions/mount/smb/mount_smb_all.sh
/opt/plot.worker/actions/upload/smb/upload_smb.sh $PROCNUM $MNTNAME
sleep 30
