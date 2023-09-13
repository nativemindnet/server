. /opt/plot.worker/config/config.sh

nohup nice -n 18 ionice -c3 -n2 $WORKPATH/actions/upload/smb/upload_loop.sh rt1_netdisk1 >> $LOGPATH/upload_smb_rt1_netdisk1.log 2>&1 & PID1=$!
nohup nice -n 18 ionice -c3 -n2 $WORKPATH/actions/upload/smb/upload_loop.sh rt1_netdisk2 >> $LOGPATH/upload_smb_rt1_netdisk2.log 2>&1 & PID1=$!
nohup nice -n 18 ionice -c3 -n2 $WORKPATH/actions/upload/smb/upload_loop.sh rt1_netdisk3 >> $LOGPATH/upload_smb_rt1_netdisk3.log 2>&1 & PID1=$!
nohup nice -n 18 ionice -c3 -n2 $WORKPATH/actions/upload/smb/upload_loop.sh rt1_netdisk4 >> $LOGPATH/upload_smb_rt1_netdisk4.log 2>&1 & PID1=$!