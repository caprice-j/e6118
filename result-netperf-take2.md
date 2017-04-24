
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