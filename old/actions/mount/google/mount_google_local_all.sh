#!/bin/bash
. /opt/plot.worker/config/config.sh

date
echo mount_google_all

/opt/plot.worker/actions/mount/google/mount_google_local.sh $GOOGLEDISK1
/opt/plot.worker/actions/mount/google/mount_google_local.sh $GOOGLEDISK2
/opt/plot.worker/actions/mount/google/mount_google_local.sh $GOOGLEDISK3
/opt/plot.worker/actions/mount/google/mount_google_local.sh $GOOGLEDISK4
