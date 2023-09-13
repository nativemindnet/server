source /opt/pre/config.sh

mdadm -S /dev/$DISKMD
mdadm --create --verbose /dev/$DISKMD --level=0 --chunk=$CHUNKSIZE --raid-devices=2 /dev/$DISKRAID1 /dev/$DISKRAID2 
sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd1 /dev/$DISKMD

cat /proc/mdstat