. /opt/plot.worker/config/config.sh

echo clean_google.sh
date

DISK=$1
echo $DISK

umount /mnt/net/google/$DISK
rm -r /mnt/net/google/$DISK

df -H

