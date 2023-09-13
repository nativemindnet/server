echo deadline > /sys/block/sda/queue/scheduler
echo deadline > /sys/block/sdb/queue/scheduler
echo deadline > /sys/block/sdc/queue/scheduler
echo deadline > /sys/block/sdd/queue/scheduler
echo deadline > /sys/block/sde/queue/scheduler

echo 0 > /sys/block/sda/queue/iosched/read_expire
echo 0 > /sys/block/sdb/queue/iosched/read_expire
echo 0 > /sys/block/sdc/queue/iosched/read_expire
echo 0 > /sys/block/sdd/queue/iosched/read_expire
echo 0 > /sys/block/sde/queue/iosched/read_expire


echo 1080000 > /sys/block/sda/queue/iosched/write_expire
echo 1080000 > /sys/block/sdb/queue/iosched/write_expire
echo 1080000 > /sys/block/sdc/queue/iosched/write_expire
echo 1080000 > /sys/block/sdd/queue/iosched/write_expire
echo 1080000 > /sys/block/sde/queue/iosched/write_expire

echo 108 > /sys/block/sda/queue/iosched/fifo_batch
echo 108 > /sys/block/sdb/queue/iosched/fifo_batch
echo 108 > /sys/block/sdc/queue/iosched/fifo_batch
echo 108 > /sys/block/sdd/queue/iosched/fifo_batch
echo 108 > /sys/block/sde/queue/iosched/fifo_batch

echo 18 > /sys/block/sda/queue/iosched/writes_starved
echo 18 > /sys/block/sdb/queue/iosched/writes_starved
echo 18 > /sys/block/sdc/queue/iosched/writes_starved
echo 18 > /sys/block/sdd/queue/iosched/writes_starved
echo 18 > /sys/block/sde/queue/iosched/writes_starved

echo 0 > /sys/block/sda/queue/iosched/front_merges
echo 0 > /sys/block/sdb/queue/iosched/front_merges
echo 0 > /sys/block/sdc/queue/iosched/front_merges
echo 0 > /sys/block/sdd/queue/iosched/front_merges
echo 0 > /sys/block/sde/queue/iosched/front_merges

echo 108 > /sys/block/sda/queue/nr_requests
echo 108 > /sys/block/sdb/queue/nr_requests
echo 108 > /sys/block/sdc/queue/nr_requests
echo 108 > /sys/block/sdd/queue/nr_requests
echo 108 > /sys/block/sde/queue/nr_requests