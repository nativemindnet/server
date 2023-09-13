. /opt/plot.worker/config/config.sh


SRCPATH=$1
DSTPATH=$2
MNTNAME=$3

echo mv
date

cd -- "$SRCPATH" &&
find . -type f -exec sh -c '
  mkdir -p "$0/${1%/*}"
  mv -v -n "$1" "$0/$1"
' "$DSTPATH" {} \;


echo mv ok
echo sleep 5
sleep 5
date

exit 0



cd -- "$SRCPATH" &&
find . -type f -exec sh -c '/opt/plot.worker/actions/upload/smb/upload1.sh $0 $1 $2' "$DSTPATH" "$MNTNAME" {} \;

