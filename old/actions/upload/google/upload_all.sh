. /opt/plot.worker/config/config.sh

nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/google/upload_loop.sh manual_upload1 >> $LOGPATH/upload_google_manual_upload1.log & PID1=$!
#nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/google/upload_loop.sh manual_upload2 >> $LOGPATH/upload_google_manual_upload2.log & PID1=$!
nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/google/upload_loop.sh manual_upload3 >> $LOGPATH/upload_google_manual_upload3.log & PID1=$!
#nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/google/upload_loop.sh manual_upload4 >> $LOGPATH/upload_google_manual_upload4.log & PID1=$!
