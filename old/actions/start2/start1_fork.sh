#nohup  nice -n 12 ionice -c3 -n2 /opt/plot.worker/actions/start2/start1_full.sh 1 /var/log/plot.worker/start1_full.log 2>&1 &
nohup /opt/plot.worker/actions/start2/start1_full.sh 1 /var/log/plot.worker/start1_full.log 2>&1 &