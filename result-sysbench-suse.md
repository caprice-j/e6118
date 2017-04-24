### CPU

```
linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0027s
    total number of events:              3420

Latency (ms):
         min:                                  1.68
         avg:                                  2.92
         max:                                  3.47
         95th percentile:                      3.36
         sum:                               9997.19

Threads fairness:
    events (avg/stddev):           3420.0000/0.00
    execution time (avg/stddev):   9.9972/0.00

linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0035s
    total number of events:              4052

Latency (ms):
         min:                                  1.68
         avg:                                  2.47
         max:                                  3.49
         95th percentile:                      3.36
         sum:                               9998.25

Threads fairness:
    events (avg/stddev):           4052.0000/0.00
    execution time (avg/stddev):   9.9983/0.00

linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0030s
    total number of events:              3124

Latency (ms):
         min:                                  1.68
         avg:                                  3.20
         max:                                  3.50
         95th percentile:                      3.36
         sum:                               9997.83

Threads fairness:
    events (avg/stddev):           3124.0000/0.00
    execution time (avg/stddev):   9.9978/0.00

linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=cpu run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
sysbench 1.1.0-4e0e44c (using bundled LuaJIT 2.1.0-beta2)

Running the test with following options:
Number of threads: 1
Initializing random number generator from current time


Prime numbers limit: 10000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          10.0010s
    total number of events:              5953

Latency (ms):
         min:                                  1.68
         avg:                                  1.68
         max:                                  1.76
         95th percentile:                      1.70
         sum:                               9995.83

Threads fairness:
    events (avg/stddev):           5953.0000/0.00
    execution time (avg/stddev):   9.9958/0.00
```


### Memory

```
linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=memory --memory-block-size=32M --memory-total-size=10GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
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

Total operations: 320 (   33.32 per second)

10240.00 MiB transferred (1066.32 MiB/sec)


General statistics:
    total time:                          9.6031s
    total number of events:              320

Latency (ms):
         min:                                 25.92
         avg:                                 30.00
         max:                                 30.56
         95th percentile:                     30.26
         sum:                               9598.65

Threads fairness:
    events (avg/stddev):           320.0000/0.00
    execution time (avg/stddev):   9.5986/0.00

linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=memory --memory-block-size=32M --memory-total-size=10GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
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

Total operations: 320 (   33.47 per second)

10240.00 MiB transferred (1070.93 MiB/sec)


General statistics:
    total time:                          9.5618s
    total number of events:              320

Latency (ms):
         min:                                 25.93
         avg:                                 29.87
         max:                                 30.70
         95th percentile:                     30.26
         sum:                               9557.31

Threads fairness:
    events (avg/stddev):           320.0000/0.00
    execution time (avg/stddev):   9.5573/0.00

```

```
linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=16M --memory-total-size=15GB run
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

Total operations: 726 (   72.49 per second)

11616.00 MiB transferred (1159.87 MiB/sec)


General statistics:
    total time:                          10.0149s
    total number of events:              726

Latency (ms):
         min:                                 12.80
         avg:                                 13.79
         max:                                 15.32
         95th percentile:                     15.00
         sum:                              10010.35

Threads fairness:
    events (avg/stddev):           726.0000/0.00
    execution time (avg/stddev):   10.0103/0.00

linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=16M --memory-total-size=15GB run
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

Total operations: 682 (   68.15 per second)

10912.00 MiB transferred (1090.43 MiB/sec)


General statistics:
    total time:                          10.0071s
    total number of events:              682

Latency (ms):
         min:                                 12.82
         avg:                                 14.67
         max:                                 20.02
         95th percentile:                     15.27
         sum:                              10002.03

Threads fairness:
    events (avg/stddev):           682.0000/0.00
    execution time (avg/stddev):   10.0020/0.00
```

#### 8 MB

```
linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=8M --memory-total-size=15GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
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

Total operations: 1345 (  134.45 per second)

10760.00 MiB transferred (1075.60 MiB/sec)


General statistics:
    total time:                          10.0037s
    total number of events:              1345

Latency (ms):
         min:                                  6.40
         avg:                                  7.43
         max:                                  8.10
         95th percentile:                      7.84
         sum:                               9988.58

Threads fairness:
    events (avg/stddev):           1345.0000/0.00
    execution time (avg/stddev):   9.9886/0.00

linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=8M --memory-total-size=15GB run
WARNING: the --test option is deprecated. You can pass a script name or path on the command line without any options.
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

Total operations: 1354 (  135.34 per second)

10832.00 MiB transferred (1082.72 MiB/sec)


General statistics:
    total time:                          10.0044s
    total number of events:              1354

Latency (ms):
         min:                                  6.29
         avg:                                  7.38
         max:                                  7.74
         95th percentile:                      7.56
         sum:                               9997.38

Threads fairness:
    events (avg/stddev):           1354.0000/0.00
    execution time (avg/stddev):   9.9974/0.00
```

### File I/O

#### Without taskset

```
../sysbench --test=fileio --file-num=64 --file-total-size=128M prepare

linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      309.89
    writes/s:                     206.59
    fsyncs/s:                     329.82

Throughput:
    read, MiB/s:                  4.84
    written, MiB/s:               3.23

General statistics:
    total time:                          60.1537s
    total number of events:              50908

Latency (ms):
         min:                                  0.00
         avg:                                  1.18
         max:                                613.99
         95th percentile:                      4.91
         sum:                              59873.78

Threads fairness:
    events (avg/stddev):           50908.0000/0.00
    execution time (avg/stddev):   59.8738/0.00

linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      206.31
    writes/s:                     137.54
    fsyncs/s:                     219.18

Throughput:
    read, MiB/s:                  3.22
    written, MiB/s:               2.15

General statistics:
    total time:                          60.2010s
    total number of events:              33895

Latency (ms):
         min:                                  0.00
         avg:                                  1.77
         max:                               1164.86
         95th percentile:                      4.82
         sum:                              59957.25

Threads fairness:
    events (avg/stddev):           33895.0000/0.00
    execution time (avg/stddev):   59.9572/0.00

```

#### With taskset

```
linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      176.96
    writes/s:                     117.98
    fsyncs/s:                     188.48

Throughput:
    read, MiB/s:                  2.77
    written, MiB/s:               1.84

General statistics:
    total time:                          60.6900s
    total number of events:              29339

Latency (ms):
         min:                                  0.00
         avg:                                  2.06
         max:                               1855.48
         95th percentile:                      4.74
         sum:                              60431.01

Threads fairness:
    events (avg/stddev):           29339.0000/0.00
    execution time (avg/stddev):   60.4310/0.00

linux:~/os/sysbench/src/sysbench-small # taskset -c 3-3 ../sysbench --test=fileio --file-num=64 --file-total-size=128M --file-test-mode=rndrw --max-time=60 --max-requests=0 run
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
    reads/s:                      166.39
    writes/s:                     110.93
    fsyncs/s:                     177.27

Throughput:
    read, MiB/s:                  2.60
    written, MiB/s:               1.73

General statistics:
    total time:                          66.3490s
    total number of events:              30162

Latency (ms):
         min:                                  0.00
         avg:                                  2.04
         max:                               1844.23
         95th percentile:                      4.82
         sum:                              61389.70

Threads fairness:
    events (avg/stddev):           30162.0000/0.00
    execution time (avg/stddev):   61.3897/0.00

```







##

```
linux:~/os/sysbench/src/sysbench-small # ../sysbench --test=memory --memory-block-size=128M --memory-total-size=20GB run
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

Total operations: 1 (    0.03 per second)

128.00 MiB transferred (4.07 MiB/sec)


General statistics:
    total time:                          31.4824s
    total number of events:              1

Latency (ms):
         min:                              31055.50
         avg:                              31055.50
         max:                              31055.50
         95th percentile:                  31023.52
         sum:                              31055.50

Threads fairness:
    events (avg/stddev):           1.0000/0.00
    execution time (avg/stddev):   31.0555/0.00

```