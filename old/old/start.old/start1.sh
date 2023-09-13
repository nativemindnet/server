#. /opt/plot.worker/config/config.sh

PROCNUM=$1

echo started
date
cd /opt/c
. ./activate


echo remove old tmp
date
rm -R /mnt/disk/$LABELTMP1/temp1/$PROCNUM/*
rm -R /mnt/disk/$LABELTMP1/temp2/$PROCNUM/*
echo remove old tmp OK
date

#if [[ "$PROCNUM" == "1" ]]; then
#    TASKSET=$TASKSET1
#elif [[ "$PROCNUM" == "2" ]]; then
#    TASKSET=$TASKSET2
#
#else
#  echo ">8"
#fi

echo start
date
chia plots create -k 32 -n 1 -u $BUCKETS -b $MEM -r $RCOUNT -t /mnt/disk/$LABELTMP1/temp1/$PROCNUM -2 /mnt/disk/$LABELSEC1/temp2/$PROCNUM -d /mnt/disk/$LABELRES1/plots/$PROCNUM  >> $LOGPATH/sd1_$PROCNUM.log 2>&1
echo finish
date