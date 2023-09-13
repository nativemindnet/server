. /opt/plot.worker/config/config.sh

#из clientdisk
nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/disk/upload_disk_loop.sh andrew2 >> $LOGPATH/upload_disk_andrew2.log & PID1=$!
nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/disk/upload_disk_loop.sh ilyakor >> $LOGPATH/upload_disk_ilyakor.log & PID1=$!
