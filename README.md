
## KVM/QEMU on OpenSUSE/RPI3

```

make -j4

cd aarch64-softmmu/

./qemu-system-aarch64 --enable-kvm -cpu host -machine type=virt,kernel_irqchip=off -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"   # KVM enabled (~ 1 sec)

./qemu-system-aarch64 -cpu cortex-a53 -machine type=virt -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"   # KVM disabled (~ 50 sec)


taskset -c 3-3 ./qemu-system-aarch64 -nographic -M vexpress-a9,kernel_irqchip=off -cpu cortex-a9 -smp 1 -m 256 -kernel ../../debian32/vmlinuz-3.2.0-4-vexpress -initrd ../../debian32/initrd.img-3.2.0-4-vexpress -drive if=sd,file=../../debian32/debian_wheezy_armhf_standard.qcow2 -append "root=/dev/mmcblk0p2 console=ttyAMA0" # doesnt work

# ubuntu image from http://cloud-images.ubuntu.com/xenial/current/
# extracted initrd and vmlinuz by qemu-nbd

# First initialization

./qemu-system-aarch64 --enable-kvm -m 300 -cpu host -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-66-generic \
 -append 'root=/dev/vda1 rw rootwait mem=300M console=ttyS0 \
  console=ttyAMA0,38400n8 init=/usr/lib/cloud-init/uncloud-init \
  ds=nocloud ubuntu-pass=upass' \
 -drive if=none,id=image,file=xenial-server-cloudimg-arm64-disk1.img \
 -initrd initrd.img-4.4.0-66-generic \
 -device virtio-blk-device,drive=image \
 -netdev user,id=user0 \
 -device virtio-net-device,netdev=user0



# From the 2nd boot

taskset -c 3-3 ./qemu-system-aarch64 --enable-kvm -m 300 -cpu host -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-66-generic \
 -append 'root=/dev/vda1 rw rootwait mem=300M console=ttyS0 \
  console=ttyAMA0,38400n8' \
 -drive if=none,id=image,file=xenial-server-cloudimg-arm64-disk1.img \
 -initrd initrd.img-4.4.0-66-generic \
 -device virtio-blk-device,drive=image \
 -netdev user,id=user0,hostfwd=tcp::5555-:12865 \
 -device virtio-net-device,netdev=user0

```

```
zypper install cpufrequtils
cpupower --cpu 0,1,2,3 frequency-info
pupower --cpu 0,1,2,3 frequency-set --governor performance
pupower --cpu 0,1,2,3 frequency-set --governor ondemand
```

+ For virtio-blk-device and virtio-net-device, see [See this document](https://wiki.linaro.org/PeterMaydell/KVM/HowTo/KVMGuestSetup)

```
netstat -a |grep LISTEN |grep -v unix           # whether 12865 (netserver) is running
```


+ [Raspberry Pi 3 Benchmark Results](https://openbenchmarking.org/result/1603058-GA-RASPBERRY01)

