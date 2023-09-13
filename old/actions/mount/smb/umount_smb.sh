. /opt/plot.worker/config/config.sh

MNTNAME=$1

#MNTPATH=$1
#NETPATH=$2

NETPATH=`echo $SMBURLS | $BINPATH/jq -r ".$MNTNAME"`
MNTPATH=/mnt/smb/$MNTNAME

echo umount smb
echo MNTNAME=$MNTNAME
echo MNTPATH=$MNTPATH
echo NETPATH=$NETPATH

umount $MNTPATH
