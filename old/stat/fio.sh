Sequential READ speed with big blocks (this should be near the number you see in the specifications for your drive):

fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=read --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=1 --runtime=60 --group_reporting
Sequential WRITE speed with big blocks (this should be near the number you see in the specifications for your drive):

fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=write --size=500m --io_size=10g --blocksize=1024k --ioengine=libaio --fsync=10000 --iodepth=32 --direct=1 --numjobs=1 --runtime=60 --group_reporting
Random 4K read QD1 (this is the number that really matters for real world performance unless you know better for sure):

fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randread --size=50m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting
Mixed random 4K read and write QD1 with sync (this is worst case number you should ever expect from your drive, usually less than 1% of the numbers listed in the spec sheet):

fio --name TEST --eta-newline=5s --filename=fio-tempfile.dat --rw=randrw --size=50m --io_size=10g --blocksize=4k --ioengine=libaio --fsync=1 --iodepth=1 --direct=1 --numjobs=1 --runtime=60 --group_reporting

8TB:
 READ: bw=117KiB/s (120kB/s), 117KiB/s-117KiB/s (120kB/s-120kB/s), io=4092KiB (4190kB), run=34852-34852msec
 WRITE: bw=125KiB/s (128kB/s), 125KiB/s-125KiB/s (128kB/s-128kB/s), io=4352KiB (4456kB), run=34852-34852msec

2TB:
 READ: bw=46.6KiB/s (47.7kB/s), 46.6KiB/s-46.6KiB/s (47.7kB/s-47.7kB/s), io=804KiB (823kB), run=17265-17265msec
 WRITE: bw=49.8KiB/s (51.0kB/s), 49.8KiB/s-49.8KiB/s (51.0kB/s-51.0kB/s), io=860KiB (881kB), run=17265-17265msec


S8 3TB
   READ: bw=210KiB/s (215kB/s), 210KiB/s-210KiB/s (215kB/s-215kB/s), io=2212KiB (2265kB), run=10528-10528msec
  WRITE: bw=227KiB/s (233kB/s), 227KiB/s-227KiB/s (233kB/s-233kB/s), io=2392KiB (2449kB), run=10528-10528msec


14TB:
   READ: bw=180KiB/s (185kB/s), 180KiB/s-180KiB/s (185kB/s-185kB/s), io=3880KiB (3973kB), run=21509-21509msec
  WRITE: bw=191KiB/s (195kB/s), 191KiB/s-191KiB/s (195kB/s-195kB/s), io=4104KiB (4202kB), run=21509-21509msec


14 TB usb
 READ: bw=443KiB/s (453kB/s), 443KiB/s-443KiB/s (453kB/s-453kB/s), io=10.8MiB (11.3MB), run=25012-25012msec
 WRITE: bw=460KiB/s (471kB/s), 460KiB/s-460KiB/s (471kB/s-471kB/s), io=11.2MiB (11.8MB), run=25012-25012msec


750 Mb
 READ: bw=280KiB/s (287kB/s), 280KiB/s-280KiB/s (287kB/s-287kB/s), io=3624KiB (3711kB), run=12937-12937msec
 WRITE: bw=295KiB/s (302kB/s), 295KiB/s-295KiB/s (302kB/s-302kB/s), io=3812KiB (3903kB), run=12937-12937msec


Jobs: 1 (f=1): [m(1)][13.1%][r=60KiB/s,w=44KiB/s][r=15,w=11 IOPS][eta 00m:53s]

numjobs!!!