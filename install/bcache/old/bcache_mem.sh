#!/bin/bash


UUID=`/opt/plot.worker/install/bcache/bcache_mem_uid.sh`
echo uuid:
echo $UUID
if [ -z "$UUID" ]
then 
    echo no existing, create
    /opt/plot.worker/install/bcache/bcache_mem_create.sh
    UUID=`/opt/plot.worker/install/bcache/bcache_mem_uid.sh`
    echo uuid:
    echo $UUID
fi

sleep 5

/opt/plot.worker/install/bcache/bcache_mem_attach.sh $UUID
sleep 2
/opt/plot.worker/install/bcache/bcache_mem_perf.sh