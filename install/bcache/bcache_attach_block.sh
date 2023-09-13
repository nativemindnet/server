echo /dev/sdd1 > /sys/fs/bcache/register
echo 1 > /sys/block/sdd/sdd1/bcache/attach
echo 1 > /sys/block/sdd/sdd1/bcache/running
