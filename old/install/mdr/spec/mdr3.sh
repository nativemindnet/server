source /opt/pre/config.sh

mkdir /mnt/disk/sd2
mdadm -S /dev/$DISKMDR
mdadm --create --verbose /dev/$DISKMDR --level=0 --chunk=512000 --raid-devices=3 /dev/$DISKRAIDRES1 /dev/$DISKRAIDRES2 /dev/$DISKRAIDRES2
sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd2 /dev/$DISKMDR

cat /proc/mdstat