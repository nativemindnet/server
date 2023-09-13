#!/bin/bash


date
echo status_loop.sh

for (( ; ; ))
do
    /opt/plot.worker/actions/status/status_iter.sh

    sleep 180
done

