```
sudo apt-get install phoronix-test-suite
# or 
git clone --depth 1 https://github.com/phoronix-test-suite/phoronix-test-suite.git
zypper install Mesa-demo-x autoconf dmidecode m4
```

##

```
New Description:


FLAC Audio Encoding 1.3.1 (no taskset):
    pts/encode-flac-1.5.0
    Test 1 of 1
    Estimated Trial Run Count:    5
    Estimated Time To Completion: 2 Minutes [21:22 UTC]
        Started Run 1 @ 21:20:55
        Started Run 2 @ 21:27:36
        Started Run 3 @ 21:34:00
        Started Run 4 @ 21:40:58
        Started Run 5 @ 21:47:31

    WAV To FLAC:
        399.72846794128
        383.6098241806
        416.40678310394
        392.20964312553
        388.55597496033

    Average: 396.10 Seconds
    Deviation: 3.23%

        Do you want to view the text results of the testing (Y/n): y
encode-flac1b
Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.


Unknown -  - raspberrypi rpi:

        Processor: Unknown @ 1.20GHz (4 Cores), Motherboard: raspberrypi rpi, Memory: 785MB, Disk: 128GB ACLCF, Monitor: LC-32LB480U

        OS: openSUSE 42.2, Kernel: 4.4.49-16-default (aarch64), Compiler: GCC 4.8.5, File-System: ext4, Screen Resolution: 1920x1080

FLAC Audio Encoding 1.3.1
WAV To FLAC
  Seconds
    Unknown -  - raspberrypi rpi .. 396.10 |=================================================================================================================================================================================================

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703201-RI-ENCODEFLA69


FLAC Audio Encoding 1.3.1 (KVM with taskset -c 3-3):
    pts/encode-flac-1.5.0 [WAV To FLAC]
    Test 2 of 2
    Estimated Trial Run Count:    5
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 22:21:28
        Started Run 2 @ 22:29:36
        Started Run 3 @ 22:37:28
        Started Run 4 @ 22:45:19
        Started Run 5 @ 22:53:04  [Std. Dev: 5.57%]
        Started Run 6 @ 23:00:02  [Std. Dev: 5.03%]
        Started Run 7 @ 23:07:53  [Std. Dev: 4.62%]
        Started Run 8 @ 23:15:43  [Std. Dev: 4.28%]
        Started Run 9 @ 23:23:31  [Std. Dev: 4.00%]
        Started Run 10 @ 23:31:18 [Std. Dev: 3.77%]

    Test Results:
        482.27784991264
        470.57331895828
        468.73620295525
        462.40901684761
        415.98164391518
        468.64275312424
        468.5143020153
        465.67203497887
        464.90245389938
        464.17871308327

    Average: 463.19 Seconds

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703202-KH-1703201RI44

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

Himeno Benchmark 3.0 (2nd trial on bare-metal):
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 3 Minutes [19:36 UTC]

        Started Run 1 @ 19:33:08
        Started Run 2 @ 19:34:10
        Started Run 3 @ 19:35:12

    Poisson Pressure Solver:
        64.232365
        63.472698
        63.847177

    Average: 63.85 MFLOPS
    Deviation: 0.59%

    Do you want to view the text results of the testing (Y/n): himeno1b
Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.


Unknown -  - raspberrypi rpi:

        Processor: Unknown @ 1.20GHz (4 Cores), Motherboard: raspberrypi rpi, Memory: 785MB, Disk: 128GB ACLCF, Monitor: LC-32LB480U

        OS: openSUSE 42.2, Kernel: 4.4.49-16-default (aarch64), Compiler: GCC 4.8.5, File-System: ext4, Screen Resolution: 1920x1080

Himeno Benchmark 3.0
Poisson Pressure Solver
  MFLOPS
    Unknown -  - raspberrypi rpi .. 63.85 |==================================================================================================================================================================================================

    Would you like to upload the results to OpenBenchmarking.org (Y/n): n


Himeno Benchmark 3.0 (3rd-trial with taskset -c 3-3):
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 4 Minutes [21:11 UTC]
        Started Run 1 @ 21:08:18
        Started Run 2 @ 21:09:33
        Started Run 3 @ 21:10:57
        Started Run 4 @ 21:11:53 *
        Started Run 5 @ 21:12:55 *
        Started Run 6 @ 21:13:55 *

    Poisson Pressure Solver:
        43.357229
        37.136564
        42.38671
        38.408923
        39.203652
        38.963035

    Average: 39.91 MFLOPS
    Deviation: 6.07%


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

imeno Benchmark 3.0 (2nd trial):
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 8 Minutes
        Started Run 1 @ 19:49:56
        Started Run 2 @ 19:51:05
        Started Run 3 @ 19:52:23  [Std. Dev: 18.71%]
        Started Run 4 @ 19:53:53  [Std. Dev: 19.11%]
        Started Run 5 @ 19:55:20  [Std. Dev: 18.06%]
        Started Run 6 @ 19:56:31  [Std. Dev: 17.05%]

    Test Results:
        44.943501
        31.482605
        35.154981
        29.871778
        30.666999
        30.721404

    Average: 33.81 MFLOPS

    Would you like to upload the results to OpenBenchmarking.org (Y/n):

Himeno Benchmark 3.0 (3rd with taskset):
    pts/himeno-1.2.0
    Test 1 of 2
    Estimated Trial Run Count:    3
    Estimated Test Run-Time:      8 Minutes
    Estimated Time To Completion: 10 Minutes
        Started Run 1 @ 22:17:11
        Started Run 2 @ 22:18:59
        Started Run 3 @ 22:20:23  [Std. Dev: 1.37%]

    Test Results:
        35.382045
        35.94059
        36.363604

    Average: 35.90 MFLOPS


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



Timed MAFFT Alignment 6.864 (bare-metal, second-try, with no VM):
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes [19:28 UTC]
        Started Run 1 @ 19:26:08
        Started Run 2 @ 19:27:05
        Started Run 3 @ 19:27:58
        Started Run 4 @ 19:28:55 *
        Started Run 5 @ 19:29:52 *
        Started Run 6 @ 19:30:55 *

    Multiple Sequence Alignment:
        55.697296857834
        51.890042066574
        56.715705156326
        55.729553937912
        61.865330934525
        58.83553814888

    Average: 56.79 Seconds
    Deviation: 5.91%

    Do you want to view the text results of the testing (Y/n): y
mafft1b
Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.


Unknown -  - raspberrypi rpi:

        Processor: Unknown @ 1.20GHz (4 Cores), Motherboard: raspberrypi rpi, Memory: 785MB, Disk: 128GB ACLCF, Monitor: LC-32LB480U

        OS: openSUSE 42.2, Kernel: 4.4.49-16-default (aarch64), Compiler: GCC 4.8.5, File-System: ext4, Screen Resolution: 1920x1080

Timed MAFFT Alignment 6.864
Multiple Sequence Alignment
  Seconds
    Unknown -  - raspberrypi rpi .. 56.79 |==================================================================================================================================================================================================

    Would you like to upload the results to OpenBenchmarking.org (Y/n): n



Timed MAFFT Alignment 6.864 (taskset -c 3-3):
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 6 Minutes [23:53 UTC]
        Started Run 1 @ 23:47:43
        Started Run 2 @ 23:53:08
        Started Run 3 @ 23:58:41

    Multiple Sequence Alignment:
        324.26875782013
        331.91063284874
        332.07411503792

    Average: 329.42 Seconds
    Deviation: 1.35%

    Do you want to view the text results of the testing (Y/n): y
mafft2btask
Unknown testing on openSUSE 42.2 via the Phoronix Test Suite.


Unknown -  - raspberrypi rpi:

        Processor: Unknown @ 1.20GHz (4 Cores), Motherboard: raspberrypi rpi, Memory: 785MB, Disk: 128GB ACLCF, Monitor: LC-32LB480U

        OS: openSUSE 42.2, Kernel: 4.4.49-16-default (aarch64), Compiler: GCC 4.8.5, File-System: ext4, Screen Resolution: 1920x1080

Timed MAFFT Alignment 6.864
Multiple Sequence Alignment
  Seconds
    Unknown -  - raspberrypi rpi .. 329.42 |=================================================================================================================================================================================================

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703213-RI-MAFFT2BTA81


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

Timed MAFFT Alignment 6.864 (2nd trial):
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 15 Minutes
        Started Run 1 @ 20:23:09
        Started Run 2 @ 20:27:27
        Started Run 3 @ 20:31:58  [Std. Dev: 17.29%]
        Started Run 4 @ 20:35:11  [Std. Dev: 18.09%]
        Started Run 5 @ 20:40:13  [Std. Dev: 17.01%]
        Started Run 6 @ 20:45:14  [Std. Dev: 15.79%]

    Test Results:
        253.39373397827
        268.52881288528
        190.99365711212
        300.04349589348
        298.87847805023
        297.05126309395

    Average: 268.15 Seconds

    Would you like to upload the results to OpenBenchmarking.org (Y/n): n

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

