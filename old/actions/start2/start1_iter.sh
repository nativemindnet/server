#!/bin/bash

PROCNUM=$1
DELAY1=$2

echo start1_iter.sh
date

    echo start iter
    nice -n 12 ionice -c3 -n2 /opt/plot.worker/actions/start2/start1.sh $PROCNUM $DELAY1
    echo start iter ok

    sleep 10
    date

    #nohup nice -n 15 ionice -c3 -n5 /opt/plot.worker/actions/final/move1.sh $PROCNUM > $LOGPATH/move1_$PROCNUM.log 2>&1 &

    sleep 120
    date
