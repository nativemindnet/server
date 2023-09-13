echo deadline > /sys/block/sda/queue/scheduler
echo deadline > /sys/block/sdb/queue/scheduler
echo deadline > /sys/block/sdc/queue/scheduler
echo deadline > /sys/block/sdd/queue/scheduler
echo deadline > /sys/block/sde/queue/scheduler

echo 108 > /sys/block/sda/queue/iosched/read_expire
echo 108 > /sys/block/sdb/queue/iosched/read_expire
echo 108 > /sys/block/sdc/queue/iosched/read_expire
echo 108 > /sys/block/sdd/queue/iosched/read_expire
echo 108 > /sys/block/sde/queue/iosched/read_expire


echo 27000 > /sys/block/sda/queue/iosched/write_expire
echo 27000 > /sys/block/sdb/queue/iosched/write_expire
echo 27000 > /sys/block/sdc/queue/iosched/write_expire
echo 27000 > /sys/block/sdd/queue/iosched/write_expire
echo 27000 > /sys/block/sde/queue/iosched/write_expire

echo 108 > /sys/block/sda/queue/iosched/fifo_batch
echo 108 > /sys/block/sdb/queue/iosched/fifo_batch
echo 108 > /sys/block/sdc/queue/iosched/fifo_batch
echo 108 > /sys/block/sdd/queue/iosched/fifo_batch
echo 108 > /sys/block/sde/queue/iosched/fifo_batch

echo 7 > /sys/block/sda/queue/iosched/writes_starved
echo 7 > /sys/block/sdb/queue/iosched/writes_starved
echo 7 > /sys/block/sdc/queue/iosched/writes_starved
echo 7 > /sys/block/sdd/queue/iosched/writes_starved
echo 7 > /sys/block/sde/queue/iosched/writes_starved

echo 1 > /sys/block/sda/queue/iosched/front_merges
echo 1 > /sys/block/sdb/queue/iosched/front_merges
echo 1 > /sys/block/sdc/queue/iosched/front_merges
echo 1 > /sys/block/sdd/queue/iosched/front_merges
echo 1 > /sys/block/sde/queue/iosched/front_merges

echo 2048 > /sys/block/sda/queue/nr_requests
echo 2048 > /sys/block/sdb/queue/nr_requests
echo 2048 > /sys/block/sdc/queue/nr_requests
echo 2048 > /sys/block/sdd/queue/nr_requests
echo 2048 > /sys/block/sde/queue/nr_requests