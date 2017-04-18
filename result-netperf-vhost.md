# Mac (netperf) to VM (netserver)

PCUser@abc ~ $ netperf -H 192.168.0.13
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.02      41.05

PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.08     120.06
16384  87380

PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.20      40.10

PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.01      69.82

PCUser@abc ~ $ netperf -H 192.168.0.13 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      44.20

# VM (netperf) to Mac (netserver)

ubuntu@ubuntu:~$ netperf -H 192.168.0.3
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.15      58.13


ubuntu@ubuntu:~$ netperf -H 192.168.0.3 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.00     159.78
131072 131072

ubuntu@ubuntu:~$ netperf -H 192.168.0.3 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      31.51

ubuntu@ubuntu:~$ netperf -H 192.168.0.3 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      34.69