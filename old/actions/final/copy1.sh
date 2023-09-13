. /opt/plot.worker/config/config.sh

PROCNUM=$1

#FINALPATH=/mnt/net/google/client1/

echo copy
date

mkdir -p $FINALPATH
#mv /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH
echo "cp -n /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH"
cp -n /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH

echo copy ok
date
