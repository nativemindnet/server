echo 90 > /proc/sys/vm/dirty_background_ratio
echo 10 > /proc/sys/vm/dirty_ratio

echo 100 > /proc/sys/vm/dirty_writeback_centisecs
echo 100 > /proc/sys/vm/dirty_expire_centisecs

#echo 0 > /proc/sys/vm/dirty_writeback_centisecs
#echo 0 > /proc/sys/vm/dirty_expire_centisecs

#echo 360000 > /proc/sys/vm/dirty_expire_centisecs
#echo 360000 > /proc/sys/vm/dirty_writeback_centisecs

#watch -n 0.1 'cat /proc/meminfo | egrep "(Dirty|Writeback)"'

#sync; echo 3 > /proc/sys/vm/drop_caches; sysctl -p