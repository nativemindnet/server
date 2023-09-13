source /opt/plot.worker/config/config.sh

mkdir /mnt/disk/sd2
mdadm -S /dev/$DISKMDRES
mdadm --create --verbose /dev/$DISKMDRES --level=0 --chunk=$CHUNKSIZERES --raid-devices=5 /dev/$DISKRAIDRES1 /dev/$DISKRAIDRES2 /dev/$DISKRAIDRES3 /dev/$DISKRAIDRES4 /dev/$DISKRAIDRES5
sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd2 /dev/$DISKMDRES

cat /proc/mdstat