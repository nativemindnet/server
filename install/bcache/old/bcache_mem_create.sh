#!/bin/bash

echo CREATE MEM
nohup wipefs -af /dev/pmem0 &
sleep 4

CSET=`make-bcache -C /dev/pmem0`
echo $CSET
CSETB=( $CSET )
UUID=${CSETB[1]}
echo $UUID
