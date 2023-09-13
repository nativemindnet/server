. /opt/plot.worker/config/config.sh


PROCNUM=$1

SRCPATH=/mnt/disk/$LABELRES1/plots/$PROCNUM/
DSTPATH=$FINALPATH





#FINALPATH=/mnt/net/google/client1/

#echo date
#echo remount google
#/opt/plot.worker/actions/mount/google/mount_google_all.sh
#sleep 108

echo mv
date


cd -- "$SRCPATH" &&
find . -type f -exec sh -c '
  mkdir -p "$0/${1%/*}"
  mv -v -n "$1" "$0/$1"
' "$DSTPATH" {} \;

#mkdir -p $FINALPATH
#mv /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH
#cp /mnt/disk/$LABELRES1/plots/$PROCNUM/* $FINALPATH

echo mv ok
date


