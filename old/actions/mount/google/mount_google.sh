#!/bin/bash
. /opt/plot.worker/config/config.sh

echo TODO:сделать монтирование без NOHUP демоном. Без verbose

date
echo mount_google.sh $1


mkdir -p /tmp/xdg
echo $'#!/bin/sh\necho $* > /dev/stderr' > /tmp/xdg/xdg-open
chmod 755 /tmp/xdg/xdg-open




GNAME=$1
echo $GNAME
if [ -z "$GNAME" ]
then
    echo NO GNAME
    exit 0
fi


GPATH=/mnt/google/$GNAME

umount  $GPATH
#rm -r /mnt/net/google/$GNAME

mkdir -p $GPATH

#
#nohup nice -n 18 ionice -c3 -n2 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -o noatime,nosuid,nodev >> $LOGPATH/gdisk_$GNAME.log 2>&1 & GPID=$!

#echo clear cache
#google-drive-ocamlfuse -cc -label $GNAME
echo mount
#nice -n 18 ionice -c3 -n2 google-drive-ocamlfuse -label $GNAME $GPATH -o noatime,nosuid,nodev,nonempty >> $LOGPATH/mount_google_$GNAME.log 2>&1 
nohup nice -n 17 ionice -c3 -n2 env PATH=/tmp/xdg:$PATH google-drive-ocamlfuse -label $GNAME $GPATH -o noatime,nosuid,nodev,nonempty >> $LOGPATH/mount_google_$GNAME.log 2>&1 & GPID=$!
echo mount ok
#& GPID=$!
