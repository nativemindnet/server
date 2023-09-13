hdparm -t /dev/nvme0n1p4
hdparm -t /dev/nvme0n1p4
hdparm -t /dev/pmem1
sync; dd if=/dev/zero of=tempfile bs=1M count=4096; sync

mkfs.ext4 /dev/pmem1
mount /dev/pmem1 11


root@anton-asus:~/test/11# sync; dd if=/dev/zero of=tempfile3 bs=1M count=512; sync
512+0 записей получено
512+0 записей отправлено
536870912 bytes (537 MB, 512 MiB) copied, 0,354257 s, 1,5 GB/s
root@anton-asus:~/test/11# hdparm -t /dev/pmem1

/dev/pmem1:
 Timing buffered disk reads: 2048 MB in  0.86 seconds = 2392.67 MB/sec



 # hdparm -W0 /dev/sda

/dev/sda:
 setting drive write-caching to 0 (off)
 write-caching =  0 (off)
# hdparm -W /dev/sda

/dev/sda:
 write-caching =  0 (off)

 hdparm -I /dev/sdb