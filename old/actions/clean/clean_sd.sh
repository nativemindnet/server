. /opt/plot.worker/config/config.sh

echo clean_sd.sh
date

umount /mnt/disk/$LABELSD1
umount /mnt/disk/$LABELRES1
umount /mnt/disk/$LABELSEC1

rm -r /mnt/disk/$LABELSD1
rm -r /mnt/disk/$LABELRES1
rm -r /mnt/disk/$LABELSEC1

df -H

