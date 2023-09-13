. /opt/plot.worker/config/config.sh

PROCNUM=$1

echo started
date


#echo remove old tmp
#date
#rm -R /mnt/disk/$LABELTMP1/temp1/$PROCNUM/*
#rm -R /mnt/disk/$LABELTMP1/temp2/$PROCNUM/*
#echo remove old tmp OK
#date

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
#chia plots create -k 32 -n 1 -u $BUCKETS -b $MEM -r $RCOUNT -t /mnt/disk/$LABELTMP1/temp1/$PROCNUM -2 /mnt/disk/$LABELSEC1/temp2/$PROCNUM -d /mnt/disk/$LABELRES1/plots/$PROCNUM  >> $LOGPATH/sd1_$PROCNUM.log 2>&1

rm -R /mnt/disk/$LABELTMP1/temp1/$PROCNUM/*
rm -R /mnt/disk/$LABELSEC1/temp2/$PROCNUM/*
#rm -R /mnt/disk/$LABELRES1/plots/$PROCNUM/*

mkdir -p /mnt/disk/$LABELTMP1/temp1/$PROCNUM 
mkdir -p /mnt/disk/$LABELSEC1/temp2/$PROCNUM
mkdir -p /mnt/disk/$LABELRES1/plots/$PROCNUM/$MNTTYPE/$MNTNAME/$CLIENT/

PARAMS="-p $PPKEY -f $FPKEY -n 1 -r $RCOUNT2 -u $BUCKETS2 -t /mnt/disk/$LABELTMP1/temp1/$PROCNUM/ -2 /mnt/disk/$LABELSEC1/temp2/$PROCNUM/ -d /mnt/disk/$LABELRES1/plots/$PROCNUM/$MNTTYPE/$MNTNAME/$CLIENT/"
echo $PARAMS

date >> $LOGPATH/chia_plot_$PROCNUM.log
/opt/plot.worker/bin/chia_plot $PARAMS  >> $LOGPATH/chia_plot_$PROCNUM.log 2>&1
echo finish
date