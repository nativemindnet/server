. /opt/plot.worker/config/config.sh

umount -f -l /mnt/disk/sd1
echo format_sd.sh
date

sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd1 /dev/$DISKMD