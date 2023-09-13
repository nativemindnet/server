cat /proc/cpuinfo

s5 E31245
4 plots LA 5.25(st >1) - параллельный запуск пауза 10 мин, время на плот 11:20

s2 i7-4770
4 plots LA 4.86(ST >1) - параллельный запуск пауза 10 мин, время на плот 10:30


s3 E3125
4 plots ,LA7.5(ST1) 10 имн,10:09



kill -SIGSTOP $PID
kill -SIGCONT $PID

IF оперативки> критичной (ушло в swap) -> SIGSTOP у последнего процесса, если оперативка разгрузилась -> SIGCONT
в свапе так и останется, но за ресурсы бороться не будет, потом само выгрузится


echo 1 >/proc/sys/vm/compact_memory

запускаем одновременно если LA > потоков -> переводим последний поток в STOP
если пропускная способность жесткого выстраивает очередь и много d > переводим крайник потоки в STOP
при запуске записывать в 1.pid

>x 1.5 плотов


SLEEP:



variant 1
perl -e '$tmp = "a" x 999999999' # allocate about 1GB

variant 2 - allocate by process memory map
https://unix.stackexchange.com/questions/6267/how-to-re-load-all-running-applications-from-swap-space-into-ram/6271#6271



#!/usr/bin/env python
import ctypes, re, sys

## Partial interface to ptrace(2), only for PTRACE_ATTACH and PTRACE_DETACH.
c_ptrace = ctypes.CDLL("libc.so.6").ptrace
c_pid_t = ctypes.c_int32 # This assumes pid_t is int32_t
c_ptrace.argtypes = [ctypes.c_int, c_pid_t, ctypes.c_void_p, ctypes.c_void_p]
def ptrace(attach, pid):
    op = ctypes.c_int(16 if attach else 17) #PTRACE_ATTACH or PTRACE_DETACH
    c_pid = c_pid_t(pid)
    null = ctypes.c_void_p()
    err = c_ptrace(op, c_pid, null, null)
    if err != 0: raise SysError, 'ptrace', err

## Parse a line in /proc/$pid/maps. Return the boundaries of the chunk
## the read permission character.
def maps_line_range(line):
    m = re.match(r'([0-9A-Fa-f]+)-([0-9A-Fa-f]+) ([-r])', line)
    return [int(m.group(1), 16), int(m.group(2), 16), m.group(3)]

## Dump the readable chunks of memory mapped by a process
def cat_proc_mem(pid):
    ## Apparently we need to ptrace(PTRACE_ATTACH, $pid) to read /proc/$pid/mem
    ptrace(True, int(pid))
    ## Read the memory maps to see what address ranges are readable
    maps_file = open("/proc/" + pid + "/maps", 'r')
    ranges = map(maps_line_range, maps_file.readlines())
    maps_file.close()
    ## Read the readable mapped ranges
    mem_file = open("/proc/" + pid + "/mem", 'r', 0)
    for r in ranges:
        if r[2] == 'r':
            mem_file.seek(r[0])
            chunk = mem_file.read(r[1] - r[0])
            print chunk,
    mem_file.close()
    ## Cleanup
    ptrace(False, int(pid))

if __name__ == "__main__":
    for pid in sys.argv[1:]:
        cat_proc_mem(pid)
See also more information on /proc/$pid/mem.

unswap () {
  cat_proc_mem "$@" >/dev/null
}