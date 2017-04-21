### Settings

+ Linux ubuntu 4.4.0-1009-raspi2 #10-Ubuntu SMP Tue Apr 19 19:51:04 UTC 2016 armv7l armv7l armv7l GNU/Linux
	+  different from OpenSUSE measurements
+ downloaded RPI3 prebuilt image from https://wiki.ubuntu.com/ARM/RaspberryPi
+ 
+

### CPU

```
ubuntu@ubuntu:~/sysbench/src$ ./sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0058s
    total number of events:              522

Latency (ms):
         min:                                 18.76
         avg:                                 19.16
         max:                                 38.01
         95th percentile:                     18.95
         sum:                              10004.06

Threads fairness:
    events (avg/stddev):           522.0000/0.00
    execution time (avg/stddev):   10.0041/0.00

ubuntu@ubuntu:~/sysbench/src$ ./sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0055s
    total number of events:              521

Latency (ms):
         min:                                 18.76
         avg:                                 19.20
         max:                                 37.69
         95th percentile:                     18.95
         sum:                              10003.75

Threads fairness:
    events (avg/stddev):           521.0000/0.00
    execution time (avg/stddev):   10.0037/0.00

```

#### Multi threads (same)

```
ubuntu@ubuntu:~/sysbench/src$ ./sysbench --test=cpu --threads=4 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 4
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0152s
    total number of events:              2068

Latency (ms):
         min:                                 18.75
         avg:                                 19.36
         max:                                 54.95
         95th percentile:                     21.89
         sum:                              40029.88

Threads fairness:
    events (avg/stddev):           517.0000/16.82
    execution time (avg/stddev):   10.0075/0.00

```

### File I/O

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Extra file open flags: 0
64 files, 2MiB each
128MiB total file size
Block size 16KiB
Number of IO requests: 0
Read/Write ratio for combined random IO test: 1.50
Periodic FSYNC enabled, calling fsync() each 100 requests.
Calling fsync() at the end of test, Enabled.
Using synchronous I/O mode
Doing random r/w test
Initializing worker threads...

Threads started!


File operations:
    reads/s:                      5.98
    writes/s:                     3.99
    fsyncs/s:                     5.33

Throughput:
    read, MiB/s:                  0.09
    written, MiB/s:               0.06

General statistics:
    total time:                          60.2230s
    total number of events:              921

Latency (ms):
         min:                                  0.01
         avg:                                 65.38
         max:                              11674.98
         95th percentile:                    493.24
         sum:                              60214.78

Threads fairness:
    events (avg/stddev):           921.0000/0.00
    execution time (avg/stddev):   60.2148/0.00
```

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Extra file open flags: 0
64 files, 2MiB each
128MiB total file size
Block size 16KiB
Number of IO requests: 0
Read/Write ratio for combined random IO test: 1.50
Periodic FSYNC enabled, calling fsync() each 100 requests.
Calling fsync() at the end of test, Enabled.
Using synchronous I/O mode
Doing random r/w test
Initializing worker threads...

Threads started!


File operations:
    reads/s:                      4.98
    writes/s:                     3.32
    fsyncs/s:                     5.07

Throughput:
    read, MiB/s:                  0.08
    written, MiB/s:               0.05

General statistics:
    total time:                          60.2001s
    total number of events:              805

Latency (ms):
         min:                                  0.01
         avg:                                 74.77
         max:                               8047.66
         95th percentile:                    493.24
         sum:                              60191.99

Threads fairness:
    events (avg/stddev):           805.0000/0.00
    execution time (avg/stddev):   60.1920/0.00
```

#### multi-threads (same)

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 --threads=4 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 4
Initializing random number generator from current time


Extra file open flags: 0
64 files, 2MiB each
128MiB total file size
Block size 16KiB
Number of IO requests: 0
Read/Write ratio for combined random IO test: 1.50
Periodic FSYNC enabled, calling fsync() each 100 requests.
Calling fsync() at the end of test, Enabled.
Using synchronous I/O mode
Doing random r/w test
Initializing worker threads...

Threads started!


File operations:
    reads/s:                      4.84
    writes/s:                     3.23
    fsyncs/s:                     4.19

Throughput:
    read, MiB/s:                  0.08
    written, MiB/s:               0.05

General statistics:
    total time:                          61.9953s
    total number of events:              760

Latency (ms):
         min:                                  0.01
         avg:                                325.60
         max:                              12671.99
         95th percentile:                   1836.24
         sum:                             247455.87

Threads fairness:
    events (avg/stddev):           190.0000/68.89
    execution time (avg/stddev):   61.8640/0.07

```

### Memory

#### 1 thread

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 131072KiB
  total size: 20480MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 93 (    9.28 per second)

11904.00 MiB transferred (1187.92 MiB/sec)


General statistics:
    total time:                          10.0209s
    total number of events:              93

Latency (ms):
         min:                                104.95
         avg:                                107.71
         max:                                119.12
         95th percentile:                    110.66
         sum:                              10017.16

Threads fairness:
    events (avg/stddev):           93.0000/0.00
    execution time (avg/stddev):   10.0172/0.00

```

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 131072KiB
  total size: 20480MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 95 (    9.46 per second)

12160.00 MiB transferred (1211.47 MiB/sec)


General statistics:
    total time:                          10.0374s
    total number of events:              95

Latency (ms):
         min:                                104.85
         avg:                                105.62
         max:                                148.43
         95th percentile:                    104.84
         sum:                              10033.76

Threads fairness:
    events (avg/stddev):           95.0000/0.00
    execution time (avg/stddev):   10.0338/0.00
```

#### multi threads (same)

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ taskset -c 2-3 ../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB --threads=2 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 2
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 131072KiB
  total size: 20480MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 95 (    9.41 per second)

12160.00 MiB transferred (1204.17 MiB/sec)


General statistics:
    total time:                          10.0982s
    total number of events:              95

Latency (ms):
         min:                                155.17
         avg:                                211.94
         max:                                216.95
         95th percentile:                    215.44
         sum:                              20134.71

Threads fairness:
    events (avg/stddev):           47.5000/0.50
    execution time (avg/stddev):   10.0674/0.03

```

### Netperf

### Threads

```
ubuntu@ubuntu:~/sysbench/src$ ./sysbench --test=threads --num-threads=1 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0002s
    total number of events:              8244

Latency (ms):
         min:                                  1.18
         avg:                                  1.21
         max:                                  2.52
         95th percentile:                      1.21
         sum:                               9990.00

Threads fairness:
    events (avg/stddev):           8244.0000/0.00
    execution time (avg/stddev):   9.9900/0.00

ubuntu@ubuntu:~/sysbench/src$ ./sysbench --test=threads --num-threads=1 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0004s
    total number of events:              8328

Latency (ms):
         min:                                  1.18
         avg:                                  1.20
         max:                                  2.52
         95th percentile:                      1.21
         sum:                               9990.17

Threads fairness:
    events (avg/stddev):           8328.0000/0.00
    execution time (avg/stddev):   9.9902/0.00
```

####

```
ubuntu@ubuntu:~/sysbench/src$ ./sysbench --test=threads --num-threads=4 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --num-threads is deprecated, use --threads instead
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 4
Initializing random number generator from current time


Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0012s
    total number of events:              30958

Latency (ms):
         min:                                  1.22
         avg:                                  1.29
         max:                                  3.64
         95th percentile:                      1.44
         sum:                              39961.71

Threads fairness:
    events (avg/stddev):           7739.5000/235.49
    execution time (avg/stddev):   9.9904/0.00
```


### Database

```
sudo aptitude install mysql-client-core-5.7 mysql-server
mysql -u root -p
CREATE DATABASE sbtest;
CREATE USER sbtest;
GRANT ALL PRIVILEGES ON sbtest.* TO ‘sbtest’@’localhost’ IDENTIFIED BY ‘sbtest’;
FLUSH PRIVILEGES;
```

```
ubuntu@ubuntu:~/sysbench/src/lua$ ../sysbench oltp_insert.lua --mysql-user=sbtest --mysql-password=sbtest prepare
ubuntu@ubuntu:~/sysbench/src/lua$ ../sysbench oltp_insert.lua --mysql-user=sbtest --mysql-password=sbtest run
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Initializing worker threads...

Threads started!

SQL statistics:
    queries performed:
        read:                            0
        write:                           7
        other:                           0
        total:                           7
    transactions:                        7      (0.60 per sec.)
    queries:                             7      (0.60 per sec.)
    ignored errors:                      0      (0.00 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          11.6777s
    total number of events:              7

Latency (ms):
         min:                                501.67
         avg:                               1667.99
         max:                               3073.64
         95th percentile:                   3095.38
         sum:                              11675.96

Threads fairness:
    events (avg/stddev):           7.0000/0.00
    execution time (avg/stddev):   11.6760/0.00
```

## Appendix

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=300 --max-requests=0 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-ec17d39 (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Extra file open flags: 0
64 files, 2MiB each
128MiB total file size
Block size 16KiB
Number of IO requests: 0
Read/Write ratio for combined random IO test: 1.50
Periodic FSYNC enabled, calling fsync() each 100 requests.
Calling fsync() at the end of test, Enabled.
Using synchronous I/O mode
Doing random r/w test
Initializing worker threads...

Threads started!


File operations:
    reads/s:                      4.79
    writes/s:                     3.20
    fsyncs/s:                     5.00

Throughput:
    read, MiB/s:                  0.07
    written, MiB/s:               0.05

General statistics:
    total time:                          300.4252s
    total number of events:              3902

Latency (ms):
         min:                                  0.01
         avg:                                 76.99
         max:                              12075.71
         95th percentile:                    502.20
         sum:                             300399.05

Threads fairness:
    events (avg/stddev):           3902.0000/0.00
    execution time (avg/stddev):   300.3991/0.00
```