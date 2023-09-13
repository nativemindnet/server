source /opt/pre/config.sh

mdadm -S /dev/$DISKMD
mdadm --create --verbose /dev/$DISKMD --level=0 --chunk=512000 --raid-devices=8 /dev/$DISKRAID1 /dev/$DISKRAID2 /dev/$DISKRAID3 /dev/$DISKRAID4  /dev/$DISKRAID5 /dev/$DISKRAID6 /dev/$DISKRAID7 /dev/$DISKRAID8
sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd1 /dev/$DISKMD

cat /proc/mdstat