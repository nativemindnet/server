. /opt/plot.worker/config/config.sh

systemctl mask udisks2

umount "/media/anton/My Passport"
umount "/media/anton/6E0FB1EC6BBF9CAD"

umount /media/anton/ilyakor_6
umount /media/anton/ANDREW2_99
umount /media/anton/ilyakor_5
umount "/media/anton/ANDREW25"
umount "/media/anton/ANDREWNEW12_PASSPORT"

NAME=andrew2
mkdir -p /mnt/disk/$NAME
mount -L andrew2 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREW11_PASSPORT /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREW24_MYPASSPORT /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREW10_PASSPORT /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREW26 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREW2_99 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREW25 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ANDREWNEW12_PASSPORT /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail

NAME=ilyakor
mkdir -p /mnt/disk/$NAME
mount -L ilyakor /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_5 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_6 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_7 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_8 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail

mount -L ilyakor_5 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_6 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_7 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail
mount -L ilyakor_8 /mnt/disk/$NAME -o noatime,nosuid,nodev,nofail


df -H

