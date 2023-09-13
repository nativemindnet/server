. /opt/plot.worker/config/config.sh

PROCNUM=$1
MNTNAME=$2

SRCPATH=/mnt/disk/$LABELRES1/plots/$PROCNUM/smb/$MNTNAME
DSTPATH=/mnt/smb/$MNTNAME/upload/$HOSTNAME

/opt/plot.worker/actions/upload/smb/upload_smb.sh $SRCPATH $DSTPATH $MNTNAME