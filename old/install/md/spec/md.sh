source /opt/pre/config.sh

mdadm --create --verbose /dev/$DISKMD --level=0 --chunk=512000 --raid-devices=4 /dev/$DISKR1 /dev/$DISKR2 /dev/$DISKR3 /dev/$DISKR4
sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd1 /dev/$DISKMD
