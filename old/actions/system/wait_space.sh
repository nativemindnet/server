#!/bin/bash
. /opt/plot.worker/config/config.sh

date
echo wait_space.sh

#MIN=700000000
#MIN=50000000
#blocks?

for (( ; ; ))
do


rm -R /mnt/disk/$LABELTMP1/temp1/1/*
rm -R /mnt/disk/$LABELSEC1/temp2/1/*

rm -R /mnt/disk/$LABELTMP1/temp1/2/*
rm -R /mnt/disk/$LABELSEC1/temp2/2/*

rm -R /mnt/disk/$LABELTMP1/temp1/
rm -R /mnt/disk/$LABELSEC1/temp2/


    FREE=`/opt/plot.worker/actions/system/check_space_sd.sh`
    if [ $FREE -gt $MINFREESD ]
    then
	echo "we have $FREE>$MINFREESD space => exit"
	exit 0
    fi
    echo "we have $FREE<$MINFREESD space => sleep 60"
    sleep 60
done
