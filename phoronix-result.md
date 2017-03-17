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
Himeno Benchmark 3.0 (KVM):
    pts/himeno-1.2.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 3 Minutes
        Started Run 1 @ 18:57:25
        Started Run 2 @ 18:58:55
        Started Run 3 @ 18:59:47  [Std. Dev: 20.98%]
        Started Run 4 @ 19:01:08  [Std. Dev: 19.56%]
        Started Run 5 @ 19:01:59  [Std. Dev: 23.11%]
        Started Run 6 @ 19:03:07  [Std. Dev: 21.99%]

    Test Results:
        48.204236
        72.075497
        55.213137
        72.083459
        43.110263
        72.067969

    Average: 60.46 MFLOPS

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703174-KH-HIMENO12747

```



```
phoronix-test-suite install mafft
phoronix-test-suite run mafft
```

```
Timed MAFFT Alignment 6.864:
    pts/mafft-1.4.0
    Test 1 of 1
    Estimated Trial Run Count:    3
    Estimated Time To Completion: 2 Minutes
        Started Run 1 @ 20:01:32
        Started Run 2 @ 20:06:03
        Started Run 3 @ 20:10:17  [Std. Dev: 4.34%]
        Started Run 4 @ 20:14:23  [Std. Dev: 3.54%]
        Started Run 5 @ 20:18:40  [Std. Dev: 8.59%]
        Started Run 6 @ 20:22:13  [Std. Dev: 7.99%]

    Test Results:
        265.86899900436
        252.13058710098
        244.08418703079
        254.81901597977
        210.44534897804
        233.56209015846

    Average: 243.49 Seconds

    Would you like to upload the results to OpenBenchmarking.org (Y/n): y
    Would you like to attach the system logs (lspci, dmesg, lsusb, etc) to the test result (Y/n): y

Results Uploaded To: http://openbenchmarking.org/result/1703170-KH-MAFFT138428
```




### Network

```
sudo apt-get install apache2-utils
```

