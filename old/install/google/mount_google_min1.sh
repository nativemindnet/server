echo $'#!/bin/sh\necho $* > /dev/stderr' > xdg-open
chmod 755 xdg-open
env PATH=`pwd`:$PATH google-drive-ocamlfuse

#mkdir -p /tmp/gdfuse
#mount -t tmpfs -o size=218m tmpfs /tmp/gdfuse

GNAME=anton1_min1
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!

exit

GNAME=anton1_min2
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!

GNAME=anton1_min3
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!

GNAME=anton1_min4
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
nice -n 10 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!


GNAME=anton1_min5
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
nice -n 18 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!

GNAME=anton1_min6
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
nice -n 18 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!

GNAME=anton1_min7
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
nice -n 18 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
