source /opt/plot.worker/config/config.sh

sudo mkfs.ext4 -F -T largefile4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0 -O ^has_journal -L sd3 /dev/$DISKSEC1

cat /proc/mdstat