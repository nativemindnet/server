. /opt/plot.worker/config/config.sh

PROCNUM=$1
MNTNAME=$2

SRCPATH=/mnt/disk/$LABELRES1/plots/$PROCNUM/google/$MNTNAME
DSTPATH=/mnt/google/$MNTNAME/

/opt/plot.worker/actions/upload/google/upload_google.sh $SRCPATH $DSTPATH $MNTNAME