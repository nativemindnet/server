. /opt/plot.worker/config/config.sh

echo start 1
nohup nice -n 19 ionice -c3 -n2 /opt/plot.worker/actions/final/copy1.sh 1 >> /var/log/plot.worker/copy1_1.log & PID1=$!
echo start 2
nohup nice -n 19 ionice -c3 -n2  /opt/plot.worker/actions/final/copy1.sh 2 >> /var/log/plot.worker/copy1_2.log & PID2=$!
