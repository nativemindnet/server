. /opt/plot.worker/config/config.sh

#nohup nice -n 18 ionice -c3 -n2 
$WORKPATH/actions/upload/smb/upload_loop.sh rt1_netdisk2
# >> $LOGPATH/upload_smb_rt1_netdisk2.log

# & PID1=$!
