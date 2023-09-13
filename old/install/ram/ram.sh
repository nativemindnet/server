#https://docs.pmem.io/persistent-memory/getting-started-guide/creating-development-environments/linux-environments/linux-memmap

#https://docs.pmem.io/persistent-memory/getting-started-guide/creating-development-environments/linux-environments/linux-memmap
#/etc/default/grub
# GRUB_BADRAM
# GRUB_CMDLINE_LINUX_DEFAULT reserved
# sudo vi /etc/default/grub
#sudo mcedit /etc/default/grub
#Add or edit the "GRUB_CMDLINE_LINUX" entry to include the mapping, eg:
#GRUB_CMDLINE_LINUX="memmap=3G!11G"
#Then update grub and reboot
#$ sudo update-grub2


echo "memmap=sizeG!offserG"

echo "memmap=size!offserG  bcache.bch_cutoff_writeback=70 bcache.bch_cutoff_writeback_sync=90"
echo "memmap=10G!7G bcache.bch_cutoff_writeback=70 bcache.bch_cutoff_writeback_sync=90"

# memmap=10G!7G  bcache.bch_cutoff_writeback=70 bcache.bch_cutoff_writeback_sync=90

#+4 os
#20*0.5

echo "24mem (16 thread):"
echo "memmap=10G!7G"

echo "48mem (16 threads)"
echo "memmap=34G!7G"

#+4 os
#30*0.5=15

echo "48mem (6cpu) total:"
echo "memmap=28G!10G"

echo "96mem (6cpu) total:"
echo "memmap=76G!10G"


sudo mcedit /etc/default/grub



#GRUB_CMDLINE_LINUX="memmap=12!18G"
#GRUB_CMDLINE_LINUX="memmap=24G!12G"

update-grub2


#dmesg | grep BIOS-e820
#sudo lsblk /dev/pmem0