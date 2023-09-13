#На старых процах не удается невилировать издержки от sequential, поэтому более 60mb sequential - читаем и пишем напрямую

BCACHE=$1
echo !!!!!!!!!
echo $BCACHE
echo !!!!!!!!!

echo cache_mode
echo was
cat /sys/block/$BCACHE/bcache/cache_mode 
echo writeback > /sys/block/$BCACHE/bcache/cache_mode
echo try
cat /sys/block/$BCACHE/bcache/cache_mode 
sleep 1
#watch cat /sys/block/$BCACHE/bcache/state
echo state
cat /sys/block/$BCACHE/bcache/state
echo now
cat /sys/block/$BCACHE/bcache/cache_mode 


#####

cat /sys/block/$BCACHE/bcache/writeback_delay
#default 30
#echo 30 > /sys/block/$BCACHE/bcache/writeback_delay
#for SSD - MAXIMUM long in econds because when we write even 24K -> it makes erase of 4MB
#echo 600 > /sys/block/$BCACHE/bcache/writeback_delay
#srazu izbavitsya, puskay dalshe obrabatyayut, chtobe ne sozdavat uzkoe gorlyshko na ssd/mem

#(For high perfomance processors)
#echo 0 > /sys/block/$BCACHE/bcache/writeback_delay

#30 (for low_perfomance processors)
#or 1
echo 30 > /sys/block/$BCACHE/bcache/writeback_delay

cat /sys/block/$BCACHE/bcache/writeback_delay


#####

echo writeback_percent
#default 10
#echo 10 > /sys/block/$BCACHE/bcache/writeback_percent
echo was:
cat /sys/block/$BCACHE/bcache/writeback_percent
#maximum, staraemsya osvobodit 
echo 40 > /sys/block/$BCACHE/bcache/writeback_percent
echo 70 > /sys/block/$BCACHE/bcache/writeback_percent
echo 90 > /sys/block/$BCACHE/bcache/writeback_percent
echo now:
cat /sys/block/$BCACHE/bcache/writeback_percent

echo 100000000 > /sys/block/$BCACHE/bcache/writeback_rate

echo writeback_rate_minimum
echo 100000000 > /sys/block/$BCACHE/bcache/writeback_rate_minimum
cat /sys/block/$BCACHE/bcache/writeback_rate_minimum

####


#writeback_percent
#  If nonzero, bcache tries to keep around this percentage of the cache dirty by
#  throttling background writeback and using a PD controller to smoothly adjust
#  the rate.

#writeback_rate
#  Rate in sectors per second - if writeback_percent is nonzero, background
#  writeback is throttled to this rate. Continuously adjusted by bcache but may
#  also be set by the user.


#writeback_running
#  If off, writeback of dirty data will not take place at all. Dirty data will
#  still be added to the cache until it is mostly full; only meant for
#  benchmarking. Defaults to on.

####

#poka ne trogaem
#first -lru, secoonf fifo
#ram->SSD->HDD fifo-> lru (ram -> ssd=fifo, tk eto prosto cache, lru ne podhodit, tk posle chteniya dannye skoree vsego uze bespolezny i 2 raz chitat ne budem, nam ne hvatit takogo kesha;na ssd hranim to, k chemu obrashaemsya, opetomy ssd->hdd=lru; )
#cache_replacement_policy
#  One of either lru, fifo or random.

####

echo sequential_cutoff
echo was:
cat /sys/block/$BCACHE/bcache/sequential_cutoff
#RAM->SSD esli sequential, to luchse srazu na SSD bez RAM => cutof=4M*8=32M; 
#echo 32000000 > /sys/block/$BCACHE/bcache/sequential_cutoff


#ssd->hdd - staraemsya osvobodit, poetomu cutof=0(disable); vashno chto 1k(melkiy limit)-eto naoborot k 0(disable))
# echo 0 > /sys/block/$BCACHE/bcache/sequential_cutoff
## tables bolee 1Gb, kotorye ne vlezut na ssd

#echo 1000000000 > /sys/block/$BCACHE/bcache/sequential_cutoff


#default 4000000
#echo 1280000000 > /sys/block/$BCACHE/bcache/sequential_cutoff

#echo 32000000 > /sys/block/$BCACHE/bcache/sequential_cutoff
#128m
#echo 128000000 > /sys/block/$BCACHE/bcache/sequential_cutoff
#1G
#3.7GB (For high perfomance processors)
#echo 4000000000 > /sys/block/$BCACHE/bcache/sequential_cutoff
#60m (for low_perfomance processors)
echo 60000000 > /sys/block/$BCACHE/bcache/sequential_cutoff


echo now:
cat /sys/block/$BCACHE/bcache/sequential_cutoff


####
#vazhnaya labuda s zadershkami, ya ne ponal. dumayu prosto otkluchit
#The default is 2000 us (2 milliseconds) for reads, and 20000 for writes.


# echo 0 > /sys/fs/bcache/<cache set>/congested_read_threshold_us
# echo 0 > /sys/fs/bcache/<cache set>/congested_write_threshold_us
echo MTODO MANUAL\

#cd eeee
#echo 0 > congested_write_threshold_us
#echo 0 > congested_read_threshold_us

####


#todo???
#partial_stripes_expensive

exit
 



echo writeback > cache_mode
echo 40 > writeback_percent
echo 1280000000 > sequential_cutoff
echo 1 > writeback_delay
echo 100000000 > writeback_rate
echo 1 > writeback_rate_update_seconds


echo 1 > clear_stats


echo 1 > writeback_percent


!!!  synchronous
#cache

echo 0 > synchronous
echo 0 > congested_write_threshold_us
echo 0 > congested_read_threshold_us
echo 1 > clear_stats

echo 0 > writeback_percent
sleep 10
cat dirty_data
echo 40 > writeback_percent

echo 0 > journal_delay_ms

echo fifo > cache_replacement_policy


echo 0 > writeback_delay


https://www.spinics.net/lists/linux-bcache/msg06851.html

