mkdir -p /var/log/plot.worker/
nohup  nice -n 12 ionice -c3 -n2 /opt/plot.worker/actions/start2/start2.sh 1 >> /var/log/plot.worker/start2_fork.log 2>&1 &