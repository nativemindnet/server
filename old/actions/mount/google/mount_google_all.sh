#!/bin/bash
. /opt/plot.worker/config/config.sh

date
echo mount_google_all

#mkdir -p /mnt/disk/sd2/google
#ln -s /mnt/disk/sda/google/  /mnt/disk/sd2/google/
mkdir -p /mnt/disk/sd2/google/log/

#killall google-drive-ocamlfuse
#pkill google-drive-ocamlfuse
#sleep 2
/opt/plot.worker/actions/mount/google/mount_google.sh own1_upload
/opt/plot.worker/actions/mount/google/mount_google.sh own2_upload
/opt/plot.worker/actions/mount/google/mount_google.sh own3_upload
/opt/plot.worker/actions/mount/google/mount_google.sh own4_upload

/opt/plot.worker/actions/mount/google/mount_google.sh own42_upload
/opt/plot.worker/actions/mount/google/mount_google.sh own42_upload2
/opt/plot.worker/actions/mount/google/mount_google.sh own42_upload3
/opt/plot.worker/actions/mount/google/mount_google.sh own42_upload4

/opt/plot.worker/actions/mount/google/mount_google.sh own5_upload

#$GOOGLEDISK1
#/opt/plot.worker/actions/mount/google/mount_google.sh $GOOGLEDISK2
#/opt/plot.worker/actions/mount/google/mount_google.sh $GOOGLEDISK3
#/opt/plot.worker/actions/mount/google/mount_google.sh $GOOGLEDISK4

echo sleep 20
sleep 20