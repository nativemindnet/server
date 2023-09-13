BCACHE=bcache0

echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/synchronous
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_write_threshold_us
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_read_threshold_us
echo 1 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/clear_stats
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/journal_delay_ms
echo fifo > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/cache_replacement_policy

BCACHE=bcache1

echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/synchronous
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_write_threshold_us
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_read_threshold_us
echo 1 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/clear_stats
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/journal_delay_ms
echo fifo > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/cache_replacement_policy

BCACHE=bcache2

echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/synchronous
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_write_threshold_us
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_read_threshold_us
echo 1 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/clear_stats
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/journal_delay_ms
echo fifo > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/cache_replacement_policy

BCACHE=bcache3

echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/synchronous
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_write_threshold_us
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_read_threshold_us
echo 1 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/clear_stats
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/journal_delay_ms
echo fifo > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/cache_replacement_policy

BCACHE=bcache4

echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/synchronous
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_write_threshold_us
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/congested_read_threshold_us
echo 1 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/clear_stats
echo 0 > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/set/journal_delay_ms
echo fifo > /sys/block/$BCACHE/bcache/dev/bcache/cache/cache0/cache_replacement_policy

