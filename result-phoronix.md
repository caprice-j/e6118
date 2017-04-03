
```
linux:~/os/phoronix-test-suite # taskset -c 3-3 ./phoronix-test-suite run encode-flac

Phoronix Test Suite v7.0.0
System Information


  PROCESSOR:          Unknown @ 1.20GHz (4 Cores)
    Monitor:          LC-32LB480U

  MOTHERBOARD:        raspberrypi rpi
    Memory:           161MB

  DISK:               128GB ACLCF
    File-System:      ext4
    Mount Options:    data=ordered noatime nobarrier rw

  OPERATING SYSTEM:   openSUSE 42.2
    Kernel:           4.4.49-16-default (aarch64)
    Compiler:         GCC 4.8.5

    Would you like to save these test results (Y/n): y

Recently Saved Test Results:
- himeno3b        [Today]
- y               [12 days old]
- yy              [12 days old]
- mafft2btask     [13 days old]
- encode-flac1b   [13 days old]

    Enter a name to save these results under: encodeflac2b
    Enter a unique name to describe this test run / configuration:


If desired, enter a new description below to better describe this result set / system configuration under test.
Press ENTER to proceed without changes.

Current Description: Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.

New Description:

FLAC Audio Encoding 1.3.1:
    pts/encode-flac-1.5.0
    Test 1 of 1
    Estimated Trial Run Count:    5
    Estimated Time To Completion: 34 Minutes [01:28 UTC]
        Started Run 1 @ 00:54:59
        Started Run 2 @ 01:01:13
        Started Run 3 @ 01:07:24
        Started Run 4 @ 01:13:28
        Started Run 5 @ 01:19:42

    WAV To FLAC:
        373.37433195114
        369.50383710861
        362.89667487144
        373.65003800392
        375.0130648613

    Average: 370.89 Seconds
    Deviation: 1.33%

    Do you want to view the text results of the testing (Y/n): n
    Would you like to upload the results to OpenBenchmarking.org (Y/n): n

```

```
ubuntu@ubuntu:~$ phoronix-test-suite run encode-flac

Phoronix Test Suite v5.2.1
System Information

Hardware:
Processor: ARMv7 rev 4 (1 Core), Motherboard: Generic DT based, Chipset: Red Hat Device 0008, Memory: 235MB, Disk: 3GB

Software:
OS: Ubuntu 16.04, Kernel: 4.4.0-71-generic-lpae (armv7l), Compiler: GCC 5.4.0 20160609, File-System: ext4, System Layer: qemu

    Would you like to save these test results (Y/n): y
    Enter a name to save these results under: encodeflac1
    Enter a unique name to describe this test run / configuration:

If you wish, enter a new description below to better describe this result set / system configuration under test.
Press ENTER to proceed without changes.

Current Description: qemu testing on Ubuntu 16.04 via the Phoronix Test Suite.

New Description:


FLAC Audio Encoding 1.3.1:
    pts/encode-flac-1.5.0
    Test 1 of 1
    Estimated Trial Run Count:    5
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 20:32:35
        Started Run 2 @ 20:40:01
        Started Run 3 @ 20:47:47
        Started Run 4 @ 20:55:32
        Started Run 5 @ 21:02:22  [Std. Dev: 5.58%]
        Started Run 6 @ 21:10:12  [Std. Dev: 5.16%]
        Started Run 7 @ 21:17:58  [Std. Dev: 4.77%]
        Started Run 8 @ 21:25:42


  [Std. Dev: 4.46%]
        Started Run 9 @ 21:33:25

  [Std. Dev: 5.49%]
        Started Run 10 @ 21:40:14
 [Std. Dev: 5.24%]

    Test Results:
        440.54042005539
        463.96791601181
        462.62256193161
        408.11023116112
        467.90976190567
        464.05775308609
        461.24587917328
        461.57153105736
        406.57661509514
        461.99375510216

    Average: 449.86 Seconds

    Would you like to upload the results to OpenBenchmarking.org (Y/n):     Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n):
Results Uploaded To: http://openbenchmarking.org/result/1704025-KH-ENCODEFLA87
```


###
```
linux:~/os/phoronix-test-suite # taskset -c 3-3 ./phoronix-test-suite run himeno

Phoronix Test Suite v7.0.0
System Information


  PROCESSOR:          Unknown @ 1.20GHz (4 Cores)
    Monitor:          LC-32LB480U

  MOTHERBOARD:        raspberrypi rpi
    Memory:           161MB

  DISK:               128GB ACLCF
    File-System:      ext4
    Mount Options:    data=ordered noatime nobarrier rw

  OPERATING SYSTEM:   openSUSE 42.2
    Kernel:           4.4.49-16-default (aarch64)
    Compiler:         GCC 4.8.5

    Would you like to save these test results (Y/n): y

Recently Saved Test Results:
- y                  [12 days old]
- yy                 [12 days old]
- mafft2btask        [13 days old]
- encode-flac1b      [13 days old]
- himeno2b-taskset   [13 days old]

    Enter a name to save these results under: himeno3b
    Enter a unique name to describe this test run / configuration: taskset

If desired, enter a new description below to better describe this result set / system configuration under test.
Press ENTER to proceed without changes.

Current Description: Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.

New Description:


Himeno Benchmark 3.0:
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 6 Minutes [00:50 UTC]
        Started Run 1 @ 00:44:59
        Started Run 2 @ 00:46:32
        Started Run 3 @ 00:47:29

    Poisson Pressure Solver:
        40.935121
        39.654035
        40.21899

    Average: 40.27 MFLOPS
    Deviation: 1.59%

    Do you want to view the text results of the testing (Y/n): n
    Would you like to upload the results to OpenBenchmarking.org (Y/n): n

```

### KVM

```
ubuntu@ubuntu:~$ phoronix-test-suite run himeno

Phoronix Test Suite v5.2.1
System Information

Hardware:
Processor: ARMv7 rev 4 (1 Core), Motherboard: Generic DT based, Chipset: Red Hat Device 0008, Memory: 235MB, Disk: 3GB

Software:
OS: Ubuntu 16.04, Kernel: 4.4.0-71-generic-lpae (armv7l), Compiler: GCC 5.4.0 20160609, File-System: ext4, System Layer: qemu

    Would you like to save these test results (Y/n): y

Recently Saved Test Results:
- encodeflac1   [Today]

    Enter a name to save these results under: himeno1
    Enter a unique name to describe this test run / configuration:

If you wish, enter a new description below to better describe this result set / system configuration under test.
Press ENTER to proceed without changes.

Current Description: qemu testing on Ubuntu 16.04 via the Phoronix Test Suite.

New Description:


Himeno Benchmark 3.0:
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 3 Minutes
        Started Run 1 @ 22:28:10
        Started Run 2 @ 22:29:54
        Started Run 3 @ 22:30:55  [Std. Dev: 9.41%]
        Started Run 4 @ 22:31:58  [Std. Dev: 8.15%]
        Started Run 5 @ 22:33:38  [Std. Dev: 7.38%]
        Started Run 6 @ 22:34:40  [Std. Dev: 7.09%]

    Test Results:
        37.129749
        32.343013
        31.168548
        31.941759
        31.718855
        30.937428

    Average: 32.54 MFLOPS

    Would you like to upload the results to OpenBenchmarking.org (Y/n): n
```


```
linux:~/os/phoronix-test-suite # taskset -c 3-3 ./phoronix-test-suite run mafft

Phoronix Test Suite v7.0.1
System Information


  PROCESSOR:          Unknown @ 1.20GHz (4 Cores)
    Monitor:          LC-32LB480U

  MOTHERBOARD:        raspberrypi rpi
    Memory:           161MB

  DISK:               128GB ACLCF
    File-System:      ext4
    Mount Options:    data=ordered noatime nobarrier rw

  OPERATING SYSTEM:   openSUSE 42.2
    Kernel:           4.4.49-16-default (aarch64)
    Compiler:         GCC 4.8.5

    Would you like to save these test results (Y/n): n


Timed MAFFT Alignment 6.864:
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 15 Minutes [01:44 UTC]
        Started Run 1 @ 01:30:15
        Started Run 2 @ 01:35:25
        Started Run 3 @ 01:39:49
        Started Run 4 @ 01:45:12 *
        Started Run 5 @ 01:50:42 *
        Started Run 6 @ 01:56:02 *

    Multiple Sequence Alignment:
        309.79254603386
        262.81028199196
        322.04932284355
        328.32955598831
        319.40379309654
        315.04603481293

    Average: 309.57 Seconds
    Deviation: 7.67%

```


```
ubuntu@ubuntu:~$ phoronix-test-suite run mafft

Phoronix Test Suite v5.2.1
System Information

Hardware:
Processor: ARMv7 rev 4 (1 Core), Motherboard: Generic DT based, Chipset: Red Hat Device 0008, Memory: 235MB, Disk: 3GB

Software:
OS: Ubuntu 16.04, Kernel: 4.4.0-71-generic-lpae (armv7l), Compiler: GCC 5.4.0 20160609, File-System: ext4, System Layer: qemu

    Would you like to save these test results (Y/n): y

Recently Saved Test Results:
- himeno1       [Today]
- encodeflac1   [Today]

    Enter a name to save these results under: mafft1
    Enter a unique name to describe this test run / configuration: n

If you wish, enter a new description below to better describe this result set / system configuration under test.
Press ENTER to proceed without changes.

Current Description: qemu testing on Ubuntu 16.04 via the Phoronix Test Suite.

New Description: n


Timed MAFFT Alignment 6.864:
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 22:52:12
        Started Run 2 @ 22:57:13
        Started Run 3 @ 23:01:38  [Std. Dev: 6.38%]
        Started Run 4 @ 23:06:32  [Std. Dev: 5.81%]
        Started Run 5 @ 23:11:33  [Std. Dev: 9.31%]
        Started Run 6 @ 23:15:35  [Std. Dev: 8.64%]

    Test Results:
        296.51609611511
        262.91470503807
        291.33111310005
        299.24927687645
        239.58811903
        295.81462001801

    Average: 280.90 Seconds

    Would you like to upload the results to OpenBenchmarking.org (Y/n): n
```


```
ubuntu@ubuntu:~$ phoronix-test-suite run openssl

Phoronix Test Suite v5.2.1
System Information

Hardware:
Processor: ARMv7 rev 4 (1 Core), Motherboard: Generic DT based, Chipset: Red Hat Device 0008, Memory: 235MB, Disk: 3GB

Software:
OS: Ubuntu 16.04, Kernel: 4.4.0-71-generic-lpae (armv7l), Compiler: GCC 5.4.0 20160609, File-System: ext4, System Layer: qemu

    Would you like to save these test results (Y/n): openssl1
    Would you like to save these test results (Y/n): y

Recently Saved Test Results:
- mafft1        [Today]
- himeno1       [Today]
- encodeflac1   [Today]

    Enter a name to save these results under: openssl1
    Enter a unique name to describe this test run / configuration: n

If you wish, enter a new description below to better describe this result set / system configuration under test.
Press ENTER to proceed without changes.

Current Description: qemu testing on Ubuntu 16.04 via the Phoronix Test Suite.

New Description:


OpenSSL 1.0.1g:
    pts/openssl-1.9.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 23:47:47
        Started Run 2 @ 23:48:10
        Started Run 3 @ 23:48:32  [Std. Dev: 32.92%]
        Started Run 4 @ 23:48:55  [Std. Dev: 27.32%]
        Started Run 5 @ 23:49:17  [Std. Dev: 23.82%]
        Started Run 6 @ 23:49:39  [Std. Dev: 29.60%]

    Test Results:
        3.1
        5.9
        6
        6
        6
        3.1

    Average: 5.02 Signs Per Second

    Would you like to upload the results to OpenBenchmarking.org (Y/n): n
```