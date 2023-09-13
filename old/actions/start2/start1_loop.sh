#!/bin/bash

PROCNUM=$1
DELAY1=0

echo loop start

for (( ; ; ))
do

    /opt/plot.worker/actions/system/wait_space.sh
    /opt/plot.worker/actions/start2/start1_iter.sh 1 $DELAY1

    /opt/plot.worker/actions/system/wait_space.sh
    /opt/plot.worker/actions/start2/start1_iter.sh 2 $DELAY1

    DELAY1=1
    sleep 60
done

