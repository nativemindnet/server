. /opt/plot.worker/config/config.sh

#todo изсписка smb???
nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/smb/upload_smb_loop.sh ilyakor >> $LOGPATH/upload_smb_ilyakor.log & PID1=$!
nohup nice -n $NICEUPLOAD ionice -c3 -n2 $WORKPATH/actions/upload/smb/upload_smb_loop.sh andrew2 >> $LOGPATH/upload_smb_andrew2.log & PID2=$!
