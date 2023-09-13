MNTPATH=/mnt/net/smb/rt1_netdisk1_full
NETPATH=//192.168.101.101/rt1_netdisk1/
umount $MNTPATH
mkdir -p $MNTPATH 

sudo mount -t cifs $NETPATH $MNTPATH -o user=ilya,password=undrograwate


MNTPATH=/mnt/net/smb/rt1_netdisk2_full
NETPATH=//192.168.101.3/rt1_netdisk2/
umount $MNTPATH
mkdir -p $MNTPATH 

sudo mount -t cifs $NETPATH $MNTPATH -o user=ilya,password=undrograwate

df -H