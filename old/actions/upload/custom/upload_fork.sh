. /opt/plot.worker/config/config.sh

nohup nice -n $NICEUPLOAD ionice -c3 -n2 /opt/plot.worker/actions/upload/custom/upload.sh /mnt/disk/sd3 /mnt/net/google/test >> /var/log/plot.worker/custom_upload.log & PID1=$!
