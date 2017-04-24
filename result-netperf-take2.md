
All with ethernet (wireless: off)

# RPI3 netperf -> netserver Mac

```
linux:~ # netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.8 () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      94.05
linux:~ # netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.8 () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.01      93.98
linux:~ # netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00    2557.76
131072 131072
linux:~ # netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00    2435.25
131072 131072
linux:~ # netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.8 () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      87.93
linux:~ # netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.8 () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      88.40
```

# KVM(vhost) netperf -> netserver Mac
```
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.12      94.11
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.13      94.10
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00    1255.20
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00    1247.40
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      93.91
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      93.96
```

# KVM(virtio, -netdev user) netperf -> netserver Mac

checked by `lsmod | grep vhost` that vhost_net is not used

```
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.01      53.34
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.01      57.49
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00     878.07
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00     900.92
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      92.91
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      91.26
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.01      51.55
```

# KVM(virtio, -netdev tap) netperf -> netserver Mac

```
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.11      93.98
ubuntu@ubuntu:~$ netperf -H 192.168.0.8
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.11      94.07
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00     972.41
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00     951.91
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      82.04
ubuntu@ubuntu:~$ netperf -H 192.168.0.8 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.8 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      82.90
```

# RPI3 netserver <- netperf Mac

```
PCUser@abc Cjango-Unchained (master) $ netperf -H 192.168.0.14
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.01      88.43
PCUser@abc Cjango-Unchained (master) $ netperf -H 192.168.0.14
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.01      87.86
PCUser@abc Cjango-Unchained (master) $ netperf -H 192.168.0.14 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.00    2600.63
16384  87380
PCUser@abc Cjango-Unchained (master) $ netperf -H 192.168.0.14 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.00    2567.09
16384  87380
PCUser@abc Cjango-Unchained (master) $ netperf -H 192.168.0.14 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      94.13
PCUser@abc Cjango-Unchained (master) $ netperf -H 192.168.0.14 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      94.13
```

# KVM(vhost) netserver <- netperf Mac

(checked netserver is not running on host OS)
```
PCUser@abc ~ $ netperf -H 192.168.0.11
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.02      93.88
PCUser@abc ~ $ netperf -H 192.168.0.11
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.02      93.58
PCUser@abc ~ $ netperf -H 192.168.0.11 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.00    1351.23
16384  87380
PCUser@abc ~ $ netperf -H 192.168.0.11 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.00    1257.33
16384  87380
PCUser@abc ~ $ netperf -H 192.168.0.11 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      94.11
PCUser@abc ~ $ netperf -H 192.168.0.11 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      94.09
```

# KVM(virtio, -netdev tap) netserver <- netperf Mac
```
PCUser@abc ~ $ netperf -H 192.168.0.13
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.02      81.31
PCUser@abc ~ $ netperf -H 192.168.0.13
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.02      78.61
PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.00     998.65
16384  87380
PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.00     977.51
16384  87380
PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      94.00
PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      93.98
```