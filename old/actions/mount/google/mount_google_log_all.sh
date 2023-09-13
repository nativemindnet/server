#!/bin/bash
. /opt/plot.worker/config/config.sh

date
echo mount_google_all

/opt/plot.worker/actions/mount/google/mount_google_log.sh $GOOGLEDISK1
/opt/plot.worker/actions/mount/google/mount_google_log.sh $GOOGLEDISK2
/opt/plot.worker/actions/mount/google/mount_google_log.sh $GOOGLEDISK3
/opt/plot.worker/actions/mount/google/mount_google_log.sh $GOOGLEDISK4
