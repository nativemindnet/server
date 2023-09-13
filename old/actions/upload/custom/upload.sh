. /opt/plot.worker/config/config.sh


SRCPATH=$1
DSTPATH=$2



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


