#!/bin/bash
. /opt/plot.worker/config/config.sh

date
echo umount_google_all

umount /mnt/google/ $GOOGLEDISK1
umount /mnt/google/ $GOOGLEDISK2
umount /mnt/google/ $GOOGLEDISK3
umount /mnt/google/ $GOOGLEDISK4