```
```


### CPU

```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0103s
    total number of events:              314

Latency (ms):
         min:                                 18.99
         avg:                                 31.86
         max:                                 39.75
         95th percentile:                     38.94
         sum:                              10004.92

Threads fairness:
    events (avg/stddev):           314.0000/0.00
    execution time (avg/stddev):   10.0049/0.00

```

```
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0144s
    total number of events:              521

Latency (ms):
         min:                                 18.98
         avg:                                 19.21
         max:                                 39.03
         95th percentile:                     19.29
         sum:                              10009.98

Threads fairness:
    events (avg/stddev):           521.0000/0.00
    execution time (avg/stddev):   10.0100/0.00
```

```
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0273s
    total number of events:              323

Latency (ms):
         min:                                 18.99
         avg:                                 31.03
         max:                                 39.35
         95th percentile:                     38.94
         sum:                              10022.65

Threads fairness:
    events (avg/stddev):           323.0000/0.00
    execution time (avg/stddev):   10.0227/0.00

```

#### Take 2
```
ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0181s
    total number of events:              147

Latency (ms):
         min:                                 29.10
         avg:                                 67.97
         max:                                130.27
         95th percentile:                     82.96
         sum:                               9991.12

Threads fairness:
    events (avg/stddev):           147.0000/0.00
    execution time (avg/stddev):   9.9911/0.00

ubuntu@ubuntu:~/sysbench/src/sysbench-small$ ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0210s
    total number of events:              282

Latency (ms):
         min:                                 18.99
         avg:                                 35.51
         max:                                167.88
         95th percentile:                     81.48
         sum:                              10013.86

Threads fairness:
    events (avg/stddev):           282.0000/0.00
    execution time (avg/stddev):   10.0139/0.00


```

### Memory

```
../sysbench --test=memory --memory-block-size=32M --memory-total-size=10GB run
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 32768KiB
  total size: 10240MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 203 (   20.24 per second)

6496.00 MiB transferred (647.78 MiB/sec)


General statistics:
    total time:                          10.0281s
    total number of events:              203

Latency (ms):
         min:                                 27.09
         avg:                                 49.36
         max:                                202.23
         95th percentile:                     90.78
         sum:                              10020.26

Threads fairness:
    events (avg/stddev):           203.0000/0.00
    execution time (avg/stddev):   10.0203/0.00

sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 32768KiB
  total size: 10240MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 133 (   13.28 per second)

4256.00 MiB transferred (425.09 MiB/sec)


General statistics:
    total time:                          10.0121s
    total number of events:              133

Latency (ms):
         min:                                 27.41
         avg:                                 75.24
         max:                                107.49
         95th percentile:                     95.81
         sum:                              10006.66

Threads fairness:
    events (avg/stddev):           133.0000/0.00
    execution time (avg/stddev):   10.0067/0.00

sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 32768KiB
  total size: 10240MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 180 (   17.99 per second)

5760.00 MiB transferred (575.53 MiB/sec)


General statistics:
    total time:                          10.0082s
    total number of events:              180

Latency (ms):
         min:                                 26.53
         avg:                                 55.54
         max:                                139.49
         95th percentile:                     92.42
         sum:                               9997.00

Threads fairness:
    events (avg/stddev):           180.0000/0.00
    execution time (avg/stddev):   9.9970/0.00

```

#### 16MB

```
../sysbench --test=memory --memory-block-size=16M --memory-total-size=15GB run
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 16384KiB
  total size: 15360MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 568 (   56.79 per second)

9088.00 MiB transferred (908.61 MiB/sec)


General statistics:
    total time:                          10.0020s
    total number of events:              568

Latency (ms):
         min:                                 13.12
         avg:                                 17.59
         max:                                 24.27
         95th percentile:                     22.28
         sum:                               9993.39

Threads fairness:
    events (avg/stddev):           568.0000/0.00
    execution time (avg/stddev):   9.9934/0.00

WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 16384KiB
  total size: 15360MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 519 (   51.85 per second)

8304.00 MiB transferred (829.64 MiB/sec)


General statistics:
    total time:                          10.0091s
    total number of events:              519

Latency (ms):
         min:                                 13.12
         avg:                                 19.27
         max:                                 45.57
         95th percentile:                     22.28
         sum:                               9999.71

Threads fairness:
    events (avg/stddev):           519.0000/0.00
    execution time (avg/stddev):   9.9997/0.00

```

####
```
../sysbench --test=memory --memory-block-size=8M --memory-total-size=15GB run

sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 8192KiB
  total size: 15360MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 1020 (  101.92 per second)

8160.00 MiB transferred (815.37 MiB/sec)


General statistics:
    total time:                          10.0077s
    total number of events:              1020

Latency (ms):
         min:                                  6.45
         avg:                                  9.80
         max:                                 11.27
         95th percentile:                     11.04
         sum:                               9994.14

Threads fairness:
    events (avg/stddev):           1020.0000/0.00
    execution time (avg/stddev):   9.9941/0.00


sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Running memory speed test with the following options:
  block size: 8192KiB
  total size: 15360MiB
  operation: write
  scope: global

Initializing worker threads...

Threads started!

Total operations: 1110 (  110.95 per second)

8880.00 MiB transferred (887.63 MiB/sec)


General statistics:
    total time:                          10.0041s
    total number of events:              1110

Latency (ms):
         min:                                  6.45
         avg:                                  9.00
         max:                                 11.30
         95th percentile:                     11.04
         sum:                               9990.01

Threads fairness:
    events (avg/stddev):           1110.0000/0.00
    execution time (avg/stddev):   9.9900/0.00
```

#### 128MB

```
../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
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

Total operations: 70 (    6.98 per second)

8960.00 MiB transferred (893.57 MiB/sec)


General statistics:
    total time:                          10.0272s
    total number of events:              70

Latency (ms):
         min:                                106.45
         avg:                                143.17
         max:                                277.54
         95th percentile:                    179.94
         sum:                              10021.99

Threads fairness:
    events (avg/stddev):           70.0000/0.00
    execution time (avg/stddev):   10.0220/0.00


```

```
../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
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

Total operations: 56 (    5.55 per second)

7168.00 MiB transferred (710.87 MiB/sec)


General statistics:
    total time:                          10.0834s
    total number of events:              56

Latency (ms):
         min:                                179.02
         avg:                                179.65
         max:                                182.62
         95th percentile:                    179.94
         sum:                              10060.59

Threads fairness:
    events (avg/stddev):           56.0000/0.00
    execution time (avg/stddev):   10.0606/0.00
```

```
../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
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

Total operations: 62 (    6.16 per second)

7936.00 MiB transferred (788.20 MiB/sec)


General statistics:
    total time:                          10.0686s
    total number of events:              62

Latency (ms):
         min:                                106.52
         avg:                                162.32
         max:                                181.55
         95th percentile:                    179.94
         sum:                              10064.15

Threads fairness:
    events (avg/stddev):           62.0000/0.00
    execution time (avg/stddev):   10.0641/0.00
```

### File I/O

```
sysbench-small $ ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      223.99
    writes/s:                     149.33
    fsyncs/s:                     238.82

Throughput:
    read, MiB/s:                  3.50
    written, MiB/s:               2.33

General statistics:
    total time:                          60.0023s
    total number of events:              36730

Latency (ms):
         min:                                  0.01
         avg:                                  1.63
         max:                                639.38
         95th percentile:                      6.91
         sum:                              59691.86

Threads fairness:
    events (avg/stddev):           36730.0000/0.00
    execution time (avg/stddev):   59.6919/0.00
```


```
../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      270.00
    writes/s:                     180.00
    fsyncs/s:                     287.83

Throughput:
    read, MiB/s:                  4.22
    written, MiB/s:               2.81

General statistics:
    total time:                          60.0009s
    total number of events:              44270

Latency (ms):
         min:                                  0.01
         avg:                                  1.35
         max:                               2143.52
         95th percentile:                      6.67
         sum:                              59697.25

Threads fairness:
    events (avg/stddev):           44270.0000/0.00
    execution time (avg/stddev):   59.6972/0.00

```

```
../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      245.97
    writes/s:                     163.98
    fsyncs/s:                     261.34

Throughput:
    read, MiB/s:                  3.84
    written, MiB/s:               2.56

General statistics:
    total time:                          60.0066s
    total number of events:              40282

Latency (ms):
         min:                                  0.01
         avg:                                  1.48
         max:                                794.05
         95th percentile:                      6.79
         sum:                              59714.19

Threads fairness:
    events (avg/stddev):           40282.0000/0.00
    execution time (avg/stddev):   59.7142/0.00

```

```
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
    reads/s:                      260.00
    writes/s:                     173.33
    fsyncs/s:                     276.97

Throughput:
    read, MiB/s:                  4.06
    written, MiB/s:               2.71

General statistics:
    total time:                          60.0003s
    total number of events:              42618

Latency (ms):
         min:                                  0.01
         avg:                                  1.40
         max:                                916.95
         95th percentile:                      6.79
         sum:                              59697.24

Threads fairness:
    events (avg/stddev):           42618.0000/0.00
    execution time (avg/stddev):   59.6972/0.00

```

### Appendix

```
ysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

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
    reads/s:                      149.30
    writes/s:                     99.53
    fsyncs/s:                     159.21

Throughput:
    read, MiB/s:                  2.33
    written, MiB/s:               1.56

General statistics:
    total time:                          300.6004s
    total number of events:              122659

Latency (ms):
         min:                                  0.01
         avg:                                  2.44
         max:                               1843.86
         95th percentile:                      6.79
         sum:                             299798.55

Threads fairness:
    events (avg/stddev):           122659.0000/0.00
    execution time (avg/stddev):   299.7986/0.00

 run--file-total-size=128M --file-test-mode=r
```