. /opt/plot.worker/config/config.sh


mkdir -p /mnt/disk/$LABELSD1
mkdir -p /mnt/disk/$LABELRES1
mkdir -p /mnt/disk/$LABELSEC1

mount -L $LABELSD1 /mnt/disk/$LABELSD1 -o noatime,nosuid,nodev,nofail
#nobarrier - может привести к повреждению при перезагрузке 
mount /dev/$DISKMD /mnt/disk/$LABELSD1 -o noatime,nosuid,nodev,nofail,nobarrier
mount /dev/$DISKMDRES /mnt/disk/$LABELRES1 -o noatime,nosuid,nodev,nofail
mount -L $LABELRES1 /mnt/disk/$LABELRES1 -o noatime,nosuid,nodev,nofail
mount -L $LABELRES2 /mnt/disk/$LABELRES2 -o noatime,nosuid,nodev,nofail
mount -L $LABELRES3 /mnt/disk/$LABELRES3 -o noatime,nosuid,nodev,nofail

#mount -t ntfs -o big_writes -L alex2 /mnt/disk/sdb1

mount -L $LABELSEC1 /mnt/disk/$LABELSEC1 -o noatime,nosuid,nodev,nofail
mount /dev/$DISKSEC1 /mnt/disk/$LABELSEC1 -o noatime,nosuid,nodev,nofail


ln -s /mnt/disk/sd1 /mnt/disk/sd2
ln -s /mnt/disk/sd1 /mnt/disk/sd3

df -H

