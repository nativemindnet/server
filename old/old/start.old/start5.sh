. /opt/plot.worker/config/config.sh

nohup nice -n 11 ionice -c3 -n1 /opt/plot.worker/actions/start1_loop.sh 1 & PID1=$!
taskset -cp $TASKSET1  $PID1
echo $PID1
sleep $PAUSE1
nohup nice -n 12 ionice -c3 -n2 /opt/plot.worker/actions/start1_loop.sh 2 & PID2=$!
taskset -cp $TASKSET2 $PID2
echo $PID2
sleep $PAUSE1
nohup nice -n 13 ionice -c3 -n3 /opt/plot.worker/actions/start1_loop.sh 3 & PID3=$!
taskset -cp $TASKSET3 $PID3
echo $PID3
sleep $PAUSE1
nohup nice -n 14 ionice -c3 -n4 /opt/plot.worker/actions/start1_loop.sh 4 & PID4=$!
taskset -cp $TASKSET4 $PID4
echo $PID4
sleep $PAUSE1
nohup nice -n 15 ionice -c3 -n5 /opt/plot.worker/actions/start1_loop.sh 5 & PID5=$!
taskset -cp $TASKSET5 $PID5
echo $PID5
sleep $PAUSE1




#echo $PID6
sleep $PAUSE2
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
kill -s STOP $PID3
sleep $PAUSE3
kill -s CONT $PID3
kill -s STOP $PID2
sleep $PAUSE3
kill -s CONT $PID2
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
kill -s STOP $PID3
sleep $PAUSE3
kill -s CONT $PID3
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6

echo second sleep
sleep $PAUSE2
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
kill -s STOP $PID3
sleep $PAUSE3
kill -s CONT $PID3
kill -s STOP $PID2
sleep $PAUSE3
kill -s CONT $PID2
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
kill -s STOP $PID3
sleep $PAUSE3
kill -s CONT $PID3
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6


echo third sleep
sleep $PAUSE2
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
kill -s STOP $PID3
sleep $PAUSE3
kill -s CONT $PID3
kill -s STOP $PID2
sleep $PAUSE3
kill -s CONT $PID2
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
kill -s STOP $PID3
sleep $PAUSE3
kill -s CONT $PID3
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
kill -s STOP $PID4
sleep $PAUSE3
kill -s CONT $PID4
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6
kill -s STOP $PID5
sleep $PAUSE3
kill -s CONT $PID5
#kill -s STOP $PID6
#sleep $PAUSE3
#kill -s CONT $PID6