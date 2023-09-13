. /opt/plot.worker/config/config.sh

echo start_clean.sh
date

/opt/plot.worker/actions/status/status_fork.sh

/opt/plot.worker/actions/mount/tmp/mount_log.sh

#mkswap /dev/sda3
swapon /dev/sda3
sysctl -w vm.swappiness=0

echo whoami
whoami
echo HOME=$HOME

#/opt/plot.worker/actions/clean/clean_all.sh >> $LOGPATH/clean_all.log 2>&1
#sleep 7
/opt/plot.worker/actions/mount/mount_all.sh >> $LOGPATH/mount_all.log 2>&1
/opt/plot.worker/actions/clean/clean_tmp.sh >> $LOGPATH/clean_tmp.log 2>&1
sleep 18
#sleep 108
/opt/plot.worker/actions.host/delay.sh >> $LOGPATH/delay.log 2>&1
/opt/plot.worker/actions.host/format.sh >> $LOGPATH/delay.log 2>&1

nohup /opt/plot.worker/actions/start2/start1_fork.sh  >> $LOGPATH/start1_fork.log 2>&1 &
sleep 60

nohup /opt/plot.worker/actions/mount/mount_all.sh >> $LOGPATH/mount_all.log 2>&1 &
sleep 60
nohup /opt/plot.worker/actions/upload/upload_fork.sh  >> $LOGPATH/upload_fork.log 2>&1 &
sleep 60
