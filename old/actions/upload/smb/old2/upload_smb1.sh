. /opt/plot.worker/config/config.sh

echo upload_smb.sh

P0=$1
P1=$2
SRCPATH=$3
DSTPATH=$4
MNTNAME=$5

MINFREE=11000000


echo $P0
echo $P1

#echo SRCPATH=$SRCPATH
#echo DSTPATH=$DSTPATH


/opt/plot.worker/actions/mount/smb/mount_smb_all.sh
#/opt/plot.worker/actions/mount/disk/mount_smb.sh $MNTNAME

  #checkmount
  ISMOUNT=`mount | grep $MNTNAME`

  if [ $ISMOUNT ]
    then

  #proverka mesta, if ne mesto - exit
  FREE=`df /mnt/disk/$MNTNAME | grep dev | awk '{print $4}' | sed '{s/.$//;}'`
  echo FREE=$FREE
  if [ $FREE -gt $MINFREE ]
    then
    echo "we have $FREE>$MINFREE GB space => do upload"
    date
    mkdir -p "$0/${1%/*}"
    mv -v -n "$1" "$0/$1"
    date
    echo mv ok
    sleep 5
    echo sleep 5
    else
    echo "we have $FREE<$MINFREE GB space => NO UPLOAD"
  fi

  #/opt/plot.worker/actions/mount/disk/umount_client.sh $MNTNAME
  fi
