. /opt/plot.worker/config/config.sh

echo upload_disk.sh

PROCNUM=$1
MNTNAME=$2

SRCPATH=/mnt/disk/$LABELRES1/plots/$PROCNUM/smb/$MNTNAME
DSTPATH=/mnt/smb/$MNTNAME/upload/$HOSTNAME

echo SRCPATH=$SRCPATH
echo DSTPATH=$DSTPATH


echo find loop
date

cd -- "$SRCPATH" &&
find . -type f -exec sh -c '
  mkdir -p "$0/${1%/*}"
  mv -v -n "$1" "$0/$1"
' "$DSTPATH" {} \;

#cd -- "$SRCPATH" &&
#find . -type f -exec sh -c "/opt/plot.worker/actions/upload/smb/upload1_smb.sh \"\$0\" \"\$1\" \"$SRCPATH\" \"$DSTPATH\" \"$MNTNAME\"" {} \;


echo find loop ok
date

echo sleep 5
sleep 5
exit 0


