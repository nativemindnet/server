UUID=$1

echo $UUID > /sys/block/bcache0/bcache/attach
echo $UUID > /sys/block/bcache1/bcache/attach
echo $UUID > /sys/block/bcache2/bcache/attach
echo $UUID > /sys/block/bcache3/bcache/attach
echo $UUID > /sys/block/bcache4/bcache/attach