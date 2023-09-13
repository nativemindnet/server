smartctl -a /dev/pmem1
smartctl -a /dev/nvme0n1
smartctl -a /dev/sdc

smartctl -a /dev/sda
smartctl -a /dev/sdb
smartctl -a /dev/sdc
smartctl -a /dev/sdd
smartctl -a /dev/sde
smartctl -a /dev/nvme0n1
lsblk -f




udevadm info --query=all --name=/dev/sda | grep ID_SERIAL
hdparm -I /dev/sd? | grep 'Serial\ Number'


sudo apt-get install snapper
psn -G syscall,wchan -a -p ^fio

psn -G syscall,wchan -a -p ^chia
