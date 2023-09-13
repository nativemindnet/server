echo $'#!/bin/sh\necho $* > /dev/stderr' > xdg-open
chmod 755 xdg-open
env PATH=`pwd`:$PATH google-drive-ocamlfuse


#GNAME=anton1_upload
#echo $GNAME
#google-drive-ocamlfuse -cc -label $GNAME
#mkdir -p /mnt/net/google/$GNAME
#nohup nice -n 18 ionice -c3 -n2 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
#taskset -cp 0 $GPID

#GNAME=anton2_upload
#echo $GNAME
#google-drive-ocamlfuse -cc -label $GNAME
#mkdir -p /mnt/net/google/$GNAME
#nohup nice -n 18 ionice -c3 -n2 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
#taskset -cp 0 $GPID


#GNAME=garik_upload
#echo $GNAME
#google-drive-ocamlfuse -cc -label $GNAME
#mkdir -p /mnt/net/google/$GNAME
#nohup nice -n 18 ionice -c3 -n2 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
#taskset -cp 0 $GPID

GNAME=garik2_upload
echo $GNAME
google-drive-ocamlfuse -cc -label $GNAME
mkdir -p /mnt/net/google/$GNAME
nohup nice -n 18 ionice -c3 -n2 google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log & GPID=$!
#taskset -cp 0 $GPID


#

#nohup google-drive-ocamlfuse -label $GNAME /mnt/net/google/$GNAME -debug -verbose -f -o noatime,nosuid,nodev >> /var/log/gdisk_$GNAME.log 2>&1 &
#google-drive-ocamlfuse -label client1 -cc

#mkdir -p /mnt/net/google/client1
#google-drive-ocamlfuse -label anton /mnt/net/google/client1

#  -f
#,nofail

#-debug -verbose -f -o
