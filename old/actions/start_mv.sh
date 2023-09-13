. /opt/plot.worker/config/config.sh

echo start.sh
date

echo whoami
whoami
echo HOME=$HOME

sudo /opt/plot.worker/actions/mount/mount.sh >> $LOGPATH/mount.log 2>&1
sleep 108
sudo /opt/plot.worker/actions/final/move2.sh >> $LOGPATH/move2.log 2>&1
sleep 108
sudo /opt/plot.worker/actions/start2/start2_fork.sh  >> $LOGPATH/start2_fork.log 2>&1
