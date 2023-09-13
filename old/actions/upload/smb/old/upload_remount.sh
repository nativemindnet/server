. /opt/plot.worker/config/config.sh
  mkdir -p "$0/${1%/*}"
  mv -v -n "$1" "$0/$1"
exit 0



  echo $0
  echo $1
  echo $2
  MNTNAME=$2
  echo $MNTNAME


  #umount na vsyakiy
  /opt/plot.worker/actions/mount/smb/umount_smb.sh $MNTNAME
  sleep 1
  df -h

  #mount
  /opt/plot.worker/actions/mount/smb/mount_smb.sh $MNTNAME
  sleep 1
  df -h

echo
  exit 0

  #proverka if ne mount - exit


  #proverka mesta, if ne mesto - exit
  FREE=/opt/plot.worker/actions/system/check_space.sh /mnt/smb/$MNTNAME
  echo FREE=$FREE
  if [ $FREE -gt $MINFREE ]
    then
    echo "we have $FREE>$MINFREE GB space => exit"
    /opt/plot.worker/actions/mount/smb/umount_smb.sh $MNTNAME
    exit 0
  fi



  /opt/plot.worker/actions/mount/smb/umount_smb.sh $MNTNAME
  
  sleep 3


