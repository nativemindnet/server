. /opt/plot.worker/config/config.sh

echo upload_disk1.sh

P0=$1
P1=$2
SRCPATH=$3
DSTPATH=$4
MNTNAME=$5



echo P0=$P1
echo P1=$P2

echo SRCPATH=$SRCPATH
echo DSTPATH=$DSTPATH
echo MNTNAME=$MNTNAME

/opt/plot.worker/actions/mount/google/mount_google.sh $MNTNAME
sleep 10

R1=$RANDOM
R2=$RANDOM
echo "$R2" > /mnt/disk/$MNTNAME/tmp/$R1
R3=`cat /mnt/disk/$MNTNAME/tmp/$R1`
rm /mnt/disk/$MNTNAME/tmp/$R1

if [ $R2 -eq $R3 ]
    then
    echo "tmp1 file saved  => do upload"
    date
    mkdir -p "$P0/${P1%/*}"
    cp -v -n "$P1" "$P0/$P1"
    date
    echo cp ok
    sleep 5
    echo sleep 5

    R12=$RANDOM
    R22=$RANDOM
    echo "$R22" > /mnt/disk/$MNTNAME/tmp/$R12
    R32=`cat /mnt/disk/$MNTNAME/tmp/$R12`
    rm /mnt/disk/$MNTNAME/tmp/$R12

    if [ $R22 -eq $R32 ]
    then
     echo "tmp2 file saved  => rm original"
     rm -v  "$P1"
    fi
    

    else
    echo "tmp file NOT saved  => SKIP upload"
  fi

  
 # fi
 
#/opt/plot.worker/actions/mount/disk/umount_client.sh $MNTNAME
