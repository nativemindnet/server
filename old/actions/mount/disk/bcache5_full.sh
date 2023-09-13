. /opt/plot.worker/config/config.sh

/opt/plot.worker/install/bcache/bcache5_run.sh
sleep 1
/opt/plot.worker/install/bcache/bcache5_perf.sh

/opt/plot.worker/install/bcache/bcache_mem.sh
sleep 1

/opt/plot.worker/actions.host/format_sd.sh >> $LOGPATH/format_sd.log 2>&1
#/opt/plot.worker/actions/clean/format_sd.sh >> $LOGPATH/format_sd.log 2>&1
sleep 2