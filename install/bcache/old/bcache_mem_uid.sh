#!/bin/bash

CSET=`bcache-super-show -f /dev/pmem0 2>/dev/null | grep cset.uuid`
CSETB=( $CSET )
UUID=${CSETB[1]}
echo $UUID
