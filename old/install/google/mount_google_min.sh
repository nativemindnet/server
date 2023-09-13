echo $'#!/bin/sh\necho $* > /dev/stderr' > xdg-open
chmod 755 xdg-open
env PATH=`pwd`:$PATH google-drive-ocamlfuse

mkdir -p /tmp/gdfuse
#mount -t tmpfs -o size=218m tmpfs /tmp/gdfuse

GNAME=anton1_min
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
#google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -m -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
