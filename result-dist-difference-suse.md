```
zypper install make automake libtool autoconf libmysqlclient-devel libmysqld-devel
```


```
linux:~/sysbench # gcc --version
gcc (SUSE Linux) 4.8.5
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

### CPU

####

```
linux:~/sysbench/src/sysbench-small # ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0002s
    total number of events:              5863

Latency (ms):
         min:                                  1.68
         avg:                                  1.70
         max:                                  3.51
         95th percentile:                      1.70
         sum:                               9994.88

Threads fairness:
    events (avg/stddev):           5863.0000/0.00
    execution time (avg/stddev):   9.9949/0.00

linux:~/sysbench/src/sysbench-small # ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0006s
    total number of events:              3213

Latency (ms):
         min:                                  1.68
         avg:                                  3.11
         max:                                  3.46
         95th percentile:                      3.36
         sum:                               9995.50

Threads fairness:
    events (avg/stddev):           3213.0000/0.00
    execution time (avg/stddev):   9.9955/0.00
```


### Memory

#### 1 thread

```
linux:~/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

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

Total operations: 81 (    8.05 per second)

10368.00 MiB transferred (1030.24 MiB/sec)


General statistics:
    total time:                          10.0637s
    total number of events:              81

Latency (ms):
         min:                                106.13
         avg:                                124.20
         max:                                126.28
         95th percentile:                    125.52
         sum:                              10059.87

Threads fairness:
    events (avg/stddev):           81.0000/0.00
    execution time (avg/stddev):   10.0599/0.00
```

```
linux:~/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

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

Total operations: 85 (    8.46 per second)

10880.00 MiB transferred (1083.00 MiB/sec)


General statistics:
    total time:                          10.0462s
    total number of events:              85

Latency (ms):
         min:                                104.41
         avg:                                118.15
         max:                                126.52
         95th percentile:                    125.52
         sum:                              10042.57

Threads fairness:
    events (avg/stddev):           85.0000/0.00
    execution time (avg/stddev):   10.0426/0.00

```
### File I/O

```
linux:~/sysbench/src/sysbench-small # ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

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
    reads/s:                      4.96
    writes/s:                     3.31
    fsyncs/s:                     5.08

Throughput:
    read, MiB/s:                  0.08
    written, MiB/s:               0.05

General statistics:
    total time:                          60.4767s
    total number of events:              807

Latency (ms):
         min:                                  0.00
         avg:                                 74.93
         max:                               2158.21
         95th percentile:                    502.20
         sum:                              60469.30

Threads fairness:
    events (avg/stddev):           807.0000/0.00
    execution time (avg/stddev):   60.4693/0.00
```

```
linux:~/sysbench/src/sysbench-small # ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

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

1
File operations:
    reads/s:                      4.99
    writes/s:                     3.33
    fsyncs/s:                     5.04

Throughput:
    read, MiB/s:                  0.08
    written, MiB/s:               0.05

General statistics:
    total time:                          60.0969s
    total number of events:              803

Latency (ms):
         min:                                  0.00
         avg:                                 74.83
         max:                               5628.07
         95th percentile:                    502.20
         sum:                              60090.79

Threads fairness:
    events (avg/stddev):           803.0000/0.00
    execution time (avg/stddev):   60.0908/0.00
```

```
linux:~/sysbench/src/sysbench-small # ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
WARNING: --max-time is deprecated, use --time instead
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

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
    reads/s:                      4.96
    writes/s:                     3.31
    fsyncs/s:                     4.88

Throughput:
    read, MiB/s:                  0.08
    written, MiB/s:               0.05

General statistics:
    total time:                          60.4494s
    total number of events:              795

Latency (ms):
         min:                                  0.00
         avg:                                 76.03
         max:                              11506.54
         95th percentile:                    493.24
         sum:                              60443.54

Threads fairness:
    events (avg/stddev):           795.0000/0.00
    execution time (avg/stddev):   60.4435/0.00

```


### Network

```
linux:~/netperf/netperf-2.7.0 # netserver
Starting netserver with host 'IN(6)ADDR_ANY' port '12865' and family AF_UNSPEC
linux:~/netperf/netperf-2.7.0 # netperf
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to localhost () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.01    6368.88

linux:~/netperf/netperf-2.7.0 # netperf
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to localhost () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.01    5110.54
```
