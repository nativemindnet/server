. /opt/plot.worker/config/config.sh

echo start 1
nohup nice -n 18 ionice -c3 -n2 /opt/plot.worker/actions/final/move1.sh 1 >> /var/log/plot.worker/move1_1.log & PID1=$!
echo start 2
nohup nice -n 18 ionice -c3 -n2  /opt/plot.worker/actions/final/move1.sh 2 >> /var/log/plot.worker/move1_2.log & PID2=$!
