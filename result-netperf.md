```
git clone https://github.com/multipath-tcp/netperf.git
```

```
linux:~/os/netperf/src # ./netperf
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to localhost () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.01    5022.02

ubuntu@ubuntu:~$ netperf
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to localhost () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.01    1991.92

```


```
linux:~/os/netperf/src # ./netperf -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to localhost () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00    23340.87
16384  87380

ubuntu@ubuntu:~$ netperf -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to localhost () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00    8678.31
16384  87380
```


```
linux:~/os/netperf/src # ./netperf -t TCP_STREAM
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to localhost () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.01    4933.77

ubuntu@ubuntu:~$ netperf -t TCP_STREAM
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to localhost () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.01    1801.14
```


```
linux:~/os/netperf/src # ./netperf -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to localhost () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.00    4822.19

ubuntu@ubuntu:~$ netperf -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to localhost () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380  16384  16384    10.00    2233.81
```