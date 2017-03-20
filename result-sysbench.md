```
sudo apt-get install sysbench
# or
zypper install sysbench
# or
git clone --depth 1 https://github.com/akopytov/sysbench.git
cd sysbench
zypper install automake libtool
./autogen.sh
```

https://www.howtoforge.com/how-to-benchmark-your-system-cpu-file-io-mysql-with-sysbench

```
linux:~/os/qemu/aarch64-softmmu/rom # sysbench --test=cpu --cpu-max-prime=1000 run
sysbench 0.5:  multi-threaded system evaluation benchmark

Running the test with following options:
Number of threads: 1
Random number generator seed is 0 and will be ignored


Prime numbers limit: 1000

Initializing worker threads...

Threads started!


General statistics:
    total time:                          1.3136s
    total number of events:              10000
    total time taken by event execution: 1.3031s
    response time:
         min:                                  0.08ms
         avg:                                  0.13ms
         max:                                  0.35ms
         approx.  95 percentile:               0.18ms

Threads fairness:
    events (avg/stddev):           10000.0000/0.00
    execution time (avg/stddev):   1.3031/0.00

ubuntu@ubuntu:~$ sysbench --test=cpu --cpu-max-prime=1000 run
sysbench 0.4.12:  multi-threaded system evaluation benchmark

Running the test with following options:
Number of threads: 1

Doing CPU performance benchmark

Threads started!
Done.

Maximum prime number checked in CPU test: 1000


Test execution summary:
    total time:                          7.2125s
    total number of events:              10000
    total time taken by event execution: 7.2063
    per-request statistics:
         min:                                  0.61ms
         avg:                                  0.72ms
         max:                                  1.66ms
         approx.  95 percentile:               1.33ms

Threads fairness:
    events (avg/stddev):           10000.0000/0.00
    execution time (avg/stddev):   7.2063/0.00

```