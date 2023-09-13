#. /opt/plot.worker/config/config.sh

PROCNUM=$1
DELAY1=0

echo loop start

for (( ; ; ))
do
    /opt/plot.worker/actions/start/start1.sh $PROCNUM $DELAY1
    /opt/plot.worker/actions/google/move1.sh $PROCNUM
    DELAY1=1
done

