
# Installing netperf on RPI3

```
zypper install automake gettext-tools libtool libxml2-devel
wget ftp://ftp.netperf.org/netperf/netperf-2.7.0.zip
unzip netperf-2.7.0.zip
cd netperf-2.7.0
# aarch64 is not recognized as machine type
./configure --build="arm"
make -j4
sudo make install
# start netserver
netserver

# try performance test on localhost
netperf
```

#### netperf on KVM -> netserver on Macbook

```
ubuntu@ubuntu:~$ netperf -H 192.168.0.3
MIGRATED TCP STREAM TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.26      20.77
ubuntu@ubuntu:~$ netperf -H 192.168.0.3 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.01      60.26
131072 131072
ubuntu@ubuntu:~$ netperf -H 192.168.0.3 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 () port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : demo
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.00      32.99
```

#### netperf on RPI3 -> netserver on Macbook

```
netperf -H 192.168.0.3,ipv4 -t TCP_RR
linux:~/os/netperf-2.7.0 # netperf -H 192.168.0.3,ipv4 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.3 () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

16384  87380  1        1       10.11      78.15
131072 131072


linux:~/os/netperf-2.7.0 # netperf -H 192.168.0.3,ipv4 -t TCP_STREAM
MIGRATED TCP STREAM TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.3 () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    11.30      20.53

linux:~/os/netperf-2.7.0 # netperf -H 192.168.0.3,ipv4 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from 0.0.0.0 (0.0.0.0) port 0 AF_INET to 192.168.0.3 () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.01      46.91
```

#### netperf on RPI3 <- netserver on Macbook

```
PCUser@abc SUSE $ netperf -H 192.168.0.17,ipv4 -t TCP_RR
MIGRATED TCP REQUEST/RESPONSE TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET : first burst 0
Local /Remote
Socket Size   Request  Resp.   Elapsed  Trans.
Send   Recv   Size     Size    Time     Rate
bytes  Bytes  bytes    bytes   secs.    per sec

131072 131072 1        1       10.01      25.67
16384  87380

PCUser@abc SUSE $ netperf -H 192.168.0.17,ipv4 -t TCP_STREAM
MIGRATED TCP STREAM TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

 87380 131072 131072    10.13      35.95

PCUser@abc SUSE $ netperf -H 192.168.0.17,ipv4 -t TCP_MAERTS
MIGRATED TCP MAERTS TEST from (null) (0.0.0.0) port 0 AF_INET to (null) () port 0 AF_INET
Recv   Send    Send
Socket Socket  Message  Elapsed
Size   Size    Size     Time     Throughput
bytes  bytes   bytes    secs.    10^6bits/sec

131072  16384  16384    10.00      32.89
```




# Another repository

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