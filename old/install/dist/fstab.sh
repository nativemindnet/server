#echo "tmpfs   /tmp         tmpfs   nodev,nosuid,size=64M          0  0" >> /etc/fstab
echo "tmpfs   /mnt         tmpfs   nodev,nosuid,size=64M          0  0" >> /etc/fstab
#cat  /etc/fstab
mcedit /etc/fstab