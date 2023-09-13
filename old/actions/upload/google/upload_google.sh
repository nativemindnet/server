. /opt/plot.worker/config/config.sh


SRCPATH=$1
DSTPATH=$2
MNTNAME=$3

echo mv
date

echo SRCPATH=$1
echo DSTPATH=$2
echo MNTNAME=$3

cd -- "$SRCPATH" &&
find -L . -type f -exec sh -c '
  mkdir -p "$0/${1%/*}"
  mv -v -n "$1" "$0/$1"
' "$DSTPATH" {} \;

#cd -- "$SRCPATH" &&
#find . -type f -exec sh -c "/opt/plot.worker/actions/upload/google/upload1_google.sh \"\$0\" \"\$1\" \"$SRCPATH\" \"$DSTPATH\" \"$MNTNAME\"" {} \;


echo mv ok
echo sleep 5
sleep 5
date

exit 0


загрузить файл пустой с проверкой, проверить содержимое. Если не ок - то выход

cd -- "$SRCPATH" &&
