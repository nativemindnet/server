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

/opt/plot.worker/actions/mount/smb/umount_smb.sh $MNTNAME
/opt/plot.worker/actions/mount/smb/mount_smb.sh $MNTNAME

#checkmount
#ISMOUNT=`mount | grep $MNTNAME`
#if [ $ISMOUNT ]
#    then

# в текущей реализации, если диск не примонтировался, то и места не будет. Поэтому монирование можно не проверять

  #proverka mesta, if ne mesto - exit
  FREE=`df /mnt/disk/$MNTNAME | grep dev | awk '{print $4}' | sed '{s/.$//;}'`
  echo FREE=$FREE
  if [ $FREE -gt $MINFREEUPLOAD ]
    then
    echo "we have $FREE>$MINFREEUPLOAD GB space => do upload"
    date
    mkdir -p "$P0/${P1%/*}"
    mv -v -n "$P1" "$P0/$P1"
    date
    echo mv ok
    sleep 5
    echo sleep 5
    else
    echo "we have $FREE<$MINFREEUPLOAD GB space => NO UPLOAD"
  fi

  
 # fi
 
#/opt/plot.worker/actions/mount/disk/umount_client.sh $MNTNAME
