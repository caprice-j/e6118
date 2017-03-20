```
sudo apt-get install phoronix-test-suite
```


## Numerical computations

```
phoronix-test-suite install himeno
phoronix-test-suite run himeno
```


```

Himeno Benchmark 3.0 (bare-metal RPI3):
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 3 Minutes [22:45 UTC]
        Started Run 1 @ 22:42:13
        Started Run 2 @ 22:43:54
        Started Run 3 @ 22:45:26
        Started Run 4 @ 22:47:02 *
        Started Run 5 @ 22:48:40 *
        Started Run 6 @ 22:50:12 *

    Poisson Pressure Solver:
        34.454929
        44.538744
        42.770318
        37.389932
        37.406793
        38.486142

    Average: 39.17 MFLOPS
    Deviation: 9.60%

    Do you want to view the text results of the testing (Y/n): y
himeno1b
Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.


Unknown -  - raspberrypi rpi:

        Processor: Unknown @ 1.20GHz (4 Cores), Motherboard: raspberrypi rpi, Memory: 785MB, Disk: 8GB SD8GB, Monitor: LC-32LB480U

        OS: openSUSE 42.2, Kernel: 4.4.49-16-default (aarch64), Compiler: GCC 4.8.5, File-System: ext4, Screen Resolution: 1920x1080

Himeno Benchmark 3.0
Poisson Pressure Solver
  MFLOPS
    Unknown -  - raspberrypi rpi .. 39.17 |==================================================================================================================================================================================================

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703170-RI-HIMENO1B185

```

```
Himeno Benchmark 3.0(KVM):
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 3 Minutes
        Started Run 1 @ 18:34:40

        Started Run 2 @ 18:35:50
        Started Run 3 @ 18:36:47  [Std. Dev: 10.23%]
        Started Run 4 @ 18:38:17  [Std. Dev: 26.49%]
        Started Run 5 @ 18:39:06  [Std. Dev: 25.20%]
        Started Run 6 @ 18:40:43  [Std. Dev: 23.99%]

    Test Results:
        38.162006
        34.950653
        42.81465
        61.194813
        36.349573
        36.20734

    Average: 41.61 MFLOPS

    Would you like to upload the results to OpenBenchmarking.org (Y/n):     Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703182-KH-HIMENO1HF86
```



```
phoronix-test-suite install mafft
phoronix-test-suite run mafft
```

```
Timed MAFFT Alignment 6.864 (bare-metal):
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes [23:08 UTC]
        Started Run 1 @ 23:07:04
        Started Run 2 @ 23:07:57
        Started Run 3 @ 23:08:53
        Started Run 4 @ 23:09:50 *
        Started Run 5 @ 23:10:44 *
        Started Run 6 @ 23:11:46 *

    Multiple Sequence Alignment:
        51.957767009735
        55.796051979065
        55.684154987335
        52.980130910873
        60.583452939987
        61.80250287056

    Average: 56.47 Seconds
    Deviation: 7.04%

    Do you want to view the text results of the testing (Y/n): y
mafft1b
Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.


Unknown -  - raspberrypi rpi:

        Processor: Unknown @ 1.20GHz (4 Cores), Motherboard: raspberrypi rpi, Memory: 785MB, Disk: 8GB SD8GB, Monitor: LC-32LB480U

        OS: openSUSE 42.2, Kernel: 4.4.49-16-default (aarch64), Compiler: GCC 4.8.5, File-System: ext4, Screen Resolution: 1920x1080

Timed MAFFT Alignment 6.864
Multiple Sequence Alignment
  Seconds
    Unknown -  - raspberrypi rpi .. 56.47 |==================================================================================================================================================================================================

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703177-RI-MAFFT1B8832
```

```
Timed MAFFT Alignment 6.864(KVM):
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 18:17:15
        Started Run 2 @ 18:22:04
        Started Run 3 @ 18:26:53  [Std. Dev: 0.47%]

    Test Results:
        284.43918800354
        287.06439685822
        286.30809116364

    Average: 285.94 Seconds

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703185-KH-MAFFT1HF689
```


```
OpenSSL 1.0.1g (KVM):
    pts/openssl-1.9.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 19:44:33
        Started Run 2 @ 19:44:55
        Started Run 3 @ 19:45:18  [Std. Dev: 32.22%]
        Started Run 4 @ 19:45:41  [Std. Dev: 31.25%]
        Started Run 5 @ 19:46:03  [Std. Dev: 27.27%]
        Started Run 6 @ 19:46:26  [Std. Dev: 25.45%]

    Test Results:
        3.5
        3.5
        5.9
        3.2
        3.9
        3.5

    Average: 3.92 Signs Per Second

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703187-KH-OPENSSL1H22

```


### Network

```
sudo apt-get install apache2-utils
```

