. /opt/plot.worker/config/config.sh

PROCNUM=$1

#FINALPATH=/mnt/net/google/client1/

#echo date
#echo remount google
#/opt/plot.worker/actions/mount/google/mount_google_all.sh
#sleep 108

echo mv
date

mkdir -p $FINALPATH
mv /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH
#cp /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH

echo mv ok
date


