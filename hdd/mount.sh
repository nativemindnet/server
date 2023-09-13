mkdir bcache1

#sudo mount /dev/nvme0n1p1 /mnt/nvme
#sudo mount /dev/sdb1 /mnt/sdb1
#sudo mount /dev/sdc1 /mnt/sdc1
#sudo mount /dev/sdd1 /mnt/sdd1
#sudo mount /dev/sda6 /mnt/sda6


sudo mount /dev/bcache0 /mnt/bcache0
sudo mount /dev/bcache1 /mnt/bcache1

sudo chmod 0777 sda6
sudo chmod 0777 bcache0
sudo chmod 0777 bcache1