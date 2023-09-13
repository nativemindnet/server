. /opt/plot.worker/config/config.sh

/opt/plot.worker/actions/start2/rm_tmp.sh

echo start 1
nohup nice -n 15 ionice -c3 -n2 /opt/plot.worker/actions/start2/start1_loop.sh 1 >> /var/log/plot.worker/start1_loop_1.log 2>&1 & PID1=$!
#taskset -cp $TASKSET1  $PID1
echo $PID1
sleep 4000
echo start 2
nohup nice -n 15 ionice -c3 -n2 /opt/plot.worker/actions/start2/start1_loop.sh 2 >> /var/log/plot.worker/start1_loop_2.log 2>&1 & PID2=$!
#taskset -cp $TASKSET2 $PID2
echo $PID2
