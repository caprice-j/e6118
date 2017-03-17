
## KVM/QEMU on OpenSUSE/RPI3

openSUSE Leap 42.2 officially announced that [they support KVM on Raspberry Pi 3](https://news.opensuse.org/2016/12/05/opensuse-leap-42-2-gets-64-bit-raspberry-image/). Here, I'll write down what I did to make KVM/QEMU on openSUSE/RPI3. My environments are Mac OS X (El Capitan 10.11.6).

#### Downloading OpenSUSE

```

wget http://download.opensuse.org/ports/aarch64/distribution/leap/42.2/appliances/openSUSE-Leap42.2-ARM-X11-raspberrypi3.aarch64-2017.02.02-Build1.22.raw.xz
xz -dv openSUSE-Leap42.2-ARM-X11-raspberrypi3.aarch64-2017.02.02-Build1.22.raw.xz
# The default username/password is "root/linux"

# Assume SD card is set on /dev/disk2 (and /dev/rdisk2) on Mac OS X
# the next line is DANGEROUS operation -- read first: http://www.ev3dev.org/docs/tutorials/writing-sd-card-image-osx-command-line/
sudo dd if=/Users/PCUser/Downloads/_RPI3/openSUSE-Leap42.2-ARM-X11-raspberrypi3.aarch64-2017.02.02-Build1.21.raw of=/dev/rdisk2 bs=4m

# By pressing Ctrl-T while dd-ing, you can check update

```

Then set SD card on RPI3, boot it, and ssh to it. On RPI3,

```
zypper install git
git clone https://github.com/agraf/qemu
cd qemu
git checkout no-kvm-irqchip
./configure --target-list=aarch64-softmmu --enable-kvm --disable-werror
make -j4
cd aarch64-softmmu
wget 

# boot builtboot for test with kvm ( ~ 1 sec )
./qemu-system-aarch64 --enable-kvm -cpu host -machine type=virt,kernel_irqchip=off -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"

# boot without kvm ( ~ 50 sec )
./qemu-system-aarch64 -cpu cortex-a53 -machine type=virt -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"

# boot 64-bit ubuntu

# ubuntu image from http://cloud-images.ubuntu.com/xenial/current/
# extracted /boot/initrd* and /boot/vmlinuz* by qemu-nbd on Macbook

# boot ubuntu

./qemu-system-aarch64 --enable-kvm -m 300 -cpu host \
 -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-66-generic \
 -append 'root=/dev/vda1 rw rootwait mem=300M console=ttyS0 \
  console=ttyAMA0,38400n8 init=/usr/lib/cloud-init/uncloud-init \
  ds=nocloud ubuntu-pass=upass' \
 -drive if=none,id=image,file=xenial-server-cloudimg-arm64-disk1.img \
 -initrd initrd.img-4.4.0-66-generic \
 -device virtio-blk-device,drive=image \
 -netdev user,id=user0 \
 -device virtio-net-device,netdev=user0

# Press Ctrl-A + C to enter QEMU monitor. In the monitor,
savevm your_tagname
loadvm your_tagname

```

### cpufreq

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

