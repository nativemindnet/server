echo 90 > /proc/sys/vm/dirty_background_ratio
echo 85 > /proc/sys/vm/dirty_ratio
echo 0 > /proc/sys/vm/dirty_writeback_centisecs
echo 0 > /proc/sys/vm/dirty_expire_centisecs

#echo 360000 > /proc/sys/vm/dirty_expire_centisecs
#echo 360000 > /proc/sys/vm/dirty_writeback_centisecs