
+ [Raspberry Pi 3 Benchmark Results](https://openbenchmarking.org/result/1603058-GA-RASPBERRY01)

+ In order to compile QEMU 2.8.? I needed to [update GCC](https://solarianprogrammer.com/2016/06/24/raspberry-pi-raspbian-install-gcc-compile-cpp-14-and-cpp-17-programs/)

+ [What is PMU](http://zhiyisun.github.io/2016/03/02/How-to-Use-Performance-Monitor-Unit-(PMU)-of-64-bit-ARMv8-A-in-Linux.html)

### KVM-enabled Kernel Installation on RP 2/3

+ First do the following steps **on Raspberry Pi** according to [official build manual](https://www.raspberrypi.org/documentation/linux/kernel/building.md):
  + cd linux
  + KERNEL=kernel7
  + make bcm2709_defconfig
  + I tried on Ubuntu/Macbook but failed for some reason
  + Then, referreing to [RP official Kernel configuration manual](https://www.raspberrypi.org/documentation/linux/kernel/configuring.md), change the following kernel compilation settings by `make menuconfig`
    + you need to `sudo apt-get install libncurses5-dev` before
      - `System Type -> Support for Large Physical Address Extension` enabled in on RP3 but `Kernel Compression Mode -> System Type -> Support for Large Physical Address Extension` on VMWare-Ubuntu
      - Some of my partial knowledge:
        - "Patch physical to virtual translations at runtime" ... CONFIG_ARM_PATCH_PHYS_VIRT=y. Disabled if you really want to make kernel compact.
        - "Control Group support" ... CONFIG_CGROUPS=y. control group is a technology used for virtualization (I'll explain in Zap paper reading maybe)
        - "Support for Large Physical Address Extension" ... CONFIG_ARM_LPAE=y. 3-level page table format (classic is 2-level)
        - "Boot Options -> Use appended device tree blob to zImage" ... CONFIG_ARM_APPENDED_DTB=y. for [backword compatibility](http://cateee.net/lkddb/web-lkddb/ARM_APPENDED_DTB.html)
        - "Boot Options -> Supplement the appended DTB with traditional ATAG information" ... CONFIG_ARM_ATAG_DTB_COMPAT=y. for backword compatibility
      - first enable "Virtualization" and then
        - "Kernel-based Virtual Machine (KVM) support"
          - Note: doesn't display without "Support for Large Physical Address Extension" enabled
        - "Host kernel accelerator for virtio net (NEW)"
        - "Cross-endian support for vhost"

#### A few useful facts

+ List
  +[NOOBS should be FAT not exFAT](https://www.raspberrypi.org/documentation/installation/sdxc_formatting.md)
















## DRAFT

+ Basic procedures are [here](https://blog.night-shade.org.uk/2015/05/kvm-on-the-raspberry-pi2/)
  + Some caveats I found when installing:
    1. Cross-compiling for RP3 does not work well on Macbook (we need to get some installation tools which might not be provided in Mac). I compiled the kernel on VMWare-Ubuntu instead.
    
    3. The following Step 4. took 2 hours.
    4. Before compiling a kernel (i.e. executing `make O=/working/rpi2 all -j 4`), you need to do:
      - installing libstdc++.so.6 by `sudo apt-get install libc6-i386 lib32z1 lib32stdc++6` ([StackOverflow](http://stackoverflow.com/questions/21642093/raspberry-pi-crosscompile-on-ubuntu-13-10-libstdc-so-6-not-found))
      - maybe you have to follow “INSTALL TOOLCHAIN” steps here: https://www.raspberrypi.org/documentation/linux/kernel/building.md
      - if you found "linux/netfilter_ipv4/ipt_ECN.h: No such file or director" error, follow: http://raspberrypi.stackexchange.com/questions/10126/problems-compiling-kernel-on-raspberry-pi
        (In my case some of .c files are there)
      - gen_new_estimator seems to be added one more argument 9 months ago, which causes compiling error (I just removed the added NULL argument)
    4. 








### [Sharing the Pi: Testbed Description and Performance Evaluation of Network Coding on the Raspberry Pi](http://vbn.aau.dk/ws/files/207628959/VTC2014v3.pdf)
  + 230 Mbps
  + overclocking leads to better power consumption?

### [The Glasgow Raspberry Pi Cloud: A Scale Model for Cloud Computing Infrastructures](http://eprints.gla.ac.uk/83064/1/83064.pdf)

### [A Study of Virtualization Overheads](http://animal.oscar.cs.stonybrook.edu/papers/files/KavitaAgarwalMSThesisSubmission.pdf#page=19)
  + KVM uses KSM (Kernel Samepage Merging) for merging duplicating pages

### KSM
  - [How to use the Kernel Samepage Merging feature](https://www.kernel.org/doc/Documentation/vm/ksm.txt)
    + "The KSM daemon ksmd periodically scans those areas of user memory which have been registered with it, looking for pages of identical content which can be replaced by a single write-protected page (which is automatically copied if a process later wants to update its content)."
## Research Ideas
### AlphaMem : KSM enhanced by Deep-learning based heuristics
  + regard memory footprint as a "board" (each cell corresponds to 4KB memory page)
  + regard KSM's mergeing action as a "correct move"
  + predict the next "move" by Convolutional Neural Network
    + pick two locations











