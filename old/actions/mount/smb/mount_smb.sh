. /opt/plot.worker/config/config.sh



MNTNAME=$1

echo $SMBURLS

NETPATH=`echo $SMBURLS | $BINPATH/jq -r ".$MNTNAME"`
MNTPATH=/mnt/smb/$MNTNAME

echo mount smb
echo MNTNAME=$MNTNAME
echo MNTPATH=$MNTPATH
echo NETPATH=$NETPATH

#umount $MNTPATH
mkdir -p $MNTPATH 
#CMD="mount -t cifs $NETPATH $MNTPATH -o user=ilya,password=undrograwate"
CMD="mount -t cifs $NETPATH $MNTPATH -o user=ilya,password=undrograwate,sec=ntlmssp"
echo $CMD
echo `$CMD`

