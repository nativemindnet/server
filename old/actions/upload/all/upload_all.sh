. /opt/plot.worker/config/config.sh

#из clientdisk
nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/all/upload_loop.sh andrew2 >> $LOGPATH/upload_andrew2.log & PID1=$!
#nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/all/upload_loop.sh ilyakor >> $LOGPATH/upload_ilyakor.log & PID1=$!
