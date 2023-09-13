. /opt/plot.worker/config/config.sh

$MNTNAME=$1
#TODO монтирование из переменной CLIENTDISKS хотя бы 1 диска в точку монтирования

mkdir -p /mnt/disk/$MNTNAME
mount -L $MNTNAME /mnt/disk/$MNTNAME -o noatime,nosuid,nodev,nofail

df -H

