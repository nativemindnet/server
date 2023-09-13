#!/bin/bash

. /opt/plot.worker/config/config.sh

date
echo status_iter.sh

URL="http://$SDKIP/sdk.ezplot/ping.php?hostname=$HOSTNAME"
echo $URL
curl $URL


V1=`cd /opt/plot.worker/ && git rev-parse HEAD`
V2=`cd /opt/plot.worker/ && git show --oneline -s`
V3=`cd /opt/plot.worker/ && git show --format="%h" --no-patch`

URL="http://$SDKIP/sdk.ezplot/status.php?hostname=$HOSTNAME&client=$CLIENT&fpkey=$FPKEY&ppkey=$PPKEY&pca=$PCA&mnttype=$MNTTYPE&mntname=$MNTNAME&v3=$V3&v1=$V1&v2=$V2"
echo $URL
RES=`curl $URL`
echo $RES

#/opt/plot.worker/actions/mount/disk/mount_disk_all.sh
#/opt/plot.worker/actions/upload/all/upload.sh $PROCNUM $MNTNAME
#sleep 30
