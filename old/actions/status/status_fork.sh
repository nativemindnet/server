. /opt/plot.worker/config/config.sh

nohup nice -n $NICESTATUS ionice -c3 -n2 /opt/plot.worker/actions/status/status_loop.sh  >> /var/log/plot.worker/status_loop.log & PID1=$!
