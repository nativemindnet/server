. /opt/plot.worker/config/config.sh

echo mount_all.sh
date


/opt/plot.worker/actions/mount/tmp/mount_tmp.sh >> $LOGPATH/mount_tmp.log 2>&1
sleep 1
/opt/plot.worker/actions/mount/disk/bcache5_full.sh >> $LOGPATH/bcache5_full.log 2>&1
sleep 1
/opt/plot.worker/actions/start2/rm_tmp.sh >> $LOGPATH/rm_tmp.log 2>&1
sleep 1
/opt/plot.worker/actions/mount/disk/mount_sd.sh >> $LOGPATH/mount_sd.log 2>&1
sleep 1
/opt/plot.worker/actions/start2/rm_tmp.sh >> $LOGPATH/rm_tmp.log 2>&1
sleep 1
/opt/plot.worker/actions/mount/google/mount_google_all.sh >> $LOGPATH/mount_google_all.log 2>&1
sleep 5
/opt/plot.worker/actions/mount/smb/mount_smb_all.sh >> $LOGPATH/mount_smb_all.log 2>&1
sleep 1
#/net/samba

echo mount ok final
echo df -H
df -H


