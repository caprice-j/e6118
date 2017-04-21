
## KVM/QEMU on OpenSUSE/RPI3

openSUSE Leap 42.2 officially announced that [they support KVM on Raspberry Pi 3](https://news.opensuse.org/2016/12/05/opensuse-leap-42-2-gets-64-bit-raspberry-image/). Here, I'll write down what I did to make KVM/QEMU on openSUSE/RPI3. My environments are Mac OS X (El Capitan 10.11.6) and VMWare Workstation (running Ubuntu 16.04) on it.

#### Downloading and installing OpenSUSE

```
wget http://download.opensuse.org/ports/aarch64/distribution/leap/42.2/appliances/openSUSE-Leap42.2-ARM-X11-raspberrypi3.aarch64-2017.02.02-Build1.22.raw.xz
xz -dv openSUSE-Leap42.2-ARM-X11-raspberrypi3.aarch64-2017.02.02-Build1.22.raw.xz
# The default username/password is "root/linux"

# check the device file of sdcard
diskutil list

# unmount
diskutil unmountDisk /dev/disk2s1

# Assume SD card is set on /dev/disk2 (and /dev/rdisk2) on Mac OS X
#
# the next command is DANGEROUS operation
# -- read first: http://www.ev3dev.org/docs/tutorials/writing-sd-card-image-osx-command-line/
#
sudo dd if=/Users/PCUser/Downloads/_RPI3/openSUSE-Leap42.2-ARM-X11-raspberrypi3.aarch64-2017.02.02-Build1.21.raw of=/dev/rdisk2 bs=4m

# this takes a few minutes. By pressing Ctrl-T while dd-ing, you can check update

```

Then set SD card on RPI3, boot it, and ssh to it. `root` password is `linux`.

#### Verifying installation

```
# change password on OpenSUSE
passwd

# check whether kvm is enabled
ls /dev/kvm

# check whether kernel is booted in Hyp mode
dmesg | grep kvm
# if you see "error: KVM vGIC probing failed" message,
# it's no problem -- RPI3 doesn't have GIC and we'll use userspace-emulated GIC

# check whether CPU is executed in 64-bit mdoe (aarch64)
lscpu

# check CPU part is 0xd03 (ARM Cortex A53) and CPU revision is 4
cat proc/cpuinfo
```

#### Setting up and booting guest VMs

On RPI3, execute

```
zypper install git

# Download and  build Alexander Graf's patched QEMU
git clone --branch no-kvm-irqchip --single-branch --depth 5 https://github.com/agraf/qemu qemu-patched
cd qemu-patched

# install necessary packages for compiling qemu
zypper install gcc gcc-c++ zlib-devel gtk2-devel libfdt1-devel make
./configure --target-list=aarch64-softmmu --enable-kvm --disable-werror
make -j4

# make -j4 (compiling by 4 cores) takes a few minutes

cd aarch64-softmmu
./qemu-systemu-aarch64 --version
# QEMU 2.7.5

cd patched-qemu/aarch64-softmmu
mkdir rom32
cd rom32
```

#### Booting various guest OSes

```
# Trial 1. check QEMU by executing a lightweight image (buildroot)
# see: https://www.bennee.com/~alex/blog/2014/05/09/running-linux-in-qemus-aarch64-system-emulation-mode/

wget http://people.linaro.org/~alex.bennee/images/aarch64-linux-3.15rc2-buildroot.img

# boot builtboot for test with kvm ( ~ 1 sec )
./qemu-system-aarch64 --enable-kvm -cpu host -machine type=virt,kernel_irqchip=off -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"

# boot without kvm ( ~ 50 sec )
./qemu-system-aarch64 -cpu cortex-a53 -machine type=virt -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"

```

```
# Trial 2. boot ubuntu 32bit by qemu-system-aarch64 (aarch32 execution mode)


# the following commands are done on VMWare Ubuntu machine on my Macbook

# extract initrd.img-4.4.0-66-generic-lpae and vmlinuz-4.4.0-66-generic-lpae from the ubuntu img
wget http://cloud-images.ubuntu.com/xenial/20170311/xenial-server-cloudimg-armhf-disk1.img
sudo modprobe nbd max_part=63
sudo qemu-nbd -c /dev/nbd0 xenial-server-cloudimg-armhf-disk1.img
mkdir mnt
sudo mount /dev/nbd0p1 mnt

# now you'll see the arm64 disk image contents under ./mnt
# copy two files needed for booting ubuntu
sudo cp ./mnt/boot/initrd* .
sudo cp ./boot/vmlinuz* .

sudo umount mnt
sudo qemu-nbd -d /dev/nbd0

# if you fail on /dev/nbd0, try on /dev/nbd1 and so on

# on Macbook until here.
# scp the above three files into RPI3's patched-qemu/aarch64-softmmu/rom32 directory,
# and execute the following on RPI3

# kernel_irqchip=off is for userspace GIC emulation

taskset -c 3-3 ../qemu-system-aarch64 --enable-kvm -m 256 -cpu host,aarch64=off \
 -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-66-generic-lpae \
 -append 'root=/dev/vda1 rw rootwait mem=256M console=ttyS0 \
  console=ttyAMA0,38400n8 init=/usr/lib/cloud-init/uncloud-init 
  ds=nocloud ubuntu-pass=upass' \
 -drive if=none,id=image,file=xenial-server-cloudimg-armhf-disk1.img \
 -initrd initrd.img-4.4.0-66-generic-lpae \
 -device virtio-blk-device,drive=image \
 -netdev user,id=user0,hostfwd=tcp::5555-:22 \
 -device virtio-net-device,netdev=user0

 # login by username "ubuntu" and password "upass"
# about aarch64=off flag, see: https://www.redhat.com/archives/libvir-list/2015-May/msg00770.html

 # after specyfing -netdev user,id=user0,hostfwd=tcp::5555-:22
ssh -p 5555 ubuntu@localhost        # on another terminal
```


```
# Trial 3 (optional). boot 64-bit Ubuntu

# ubuntu image from http://cloud-images.ubuntu.com/xenial/current/
# extracted /boot/initrd* and /boot/vmlinuz* by qemu-nbd on Macbook

# boot ubuntu

# Note: no aarch64=off flag because guest is 64-bit

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

# by typing 'quit' in QEMU monitor, exit the VM.
# All the packages installed are contained in the image.
```

```

# Trial 4: Ubuntu corresponding to Linux Kernel 4.4.49 (Long Term Support)
# 4.4.49 is used for OpenSUSE 42.2;
# https://people.canonical.com/~kernel/info/kernel-version-map.html

# wget https://cloud-images.ubuntu.com/releases/16.04/release-20170330/ubuntu-16.04-server-cloudimg-armhf-disk1.img

kpartx -av
# => add map loop1p1 (254:2): 0 840701 linear 7:1 3


sudo modprobe nbd max_part=63
sudo qemu-nbd -c /dev/nbd0 ubuntu-16.04-server-cloudimg-armhf-disk1.img
mkdir /mnt/ospart
mount /dev/nbd0p1 /mnt/ospart

cp /mnt/ospart/boot/initrd.img-4.4.0-71-generic-lpae .
cp /mnt/ospart/boot/vmlinuz-4.4.0-71-generic-lpae    .

# we need to execute the following twice? (the first time ubuntu:upass failed)


# Virtio version
 taskset -c 3-3 ../qemu-system-aarch64 --enable-kvm -m 256 -cpu host,aarch64=off \
 -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-71-generic-lpae \
 -append 'root=/dev/vda1 rootfstype=ext4 rw rootwait mem=256M console=ttyS0 console=ttyAMA0,38400n8 init=/usr/lib/cloud-init/uncloud-init ds=nocloud ubuntu-pass=upass' \
 -drive if=none,id=image,file=ubuntu-16.04-server-cloudimg-armhf-disk1.img \
 -initrd initrd.img-4.4.0-71-generic-lpae \
 -device virtio-blk-device,drive=image \
 -netdev user,id=user0,hostfwd=tcp::5555-:22 \
 -device virtio-net-device,netdev=user0

# Note: -append does not allow newline (\\)

```

```
lsmod | grep vhost
modprobe vhost_net
lsmod | grep vhost  # vhost_net should appear with vhost

# add br0 by make_bridge.sh

# copy /etc/qemu-ifup from http://www.linux-kvm.org/page/Networking

# tap0 is created on top by 
  taskset -c 3-3 ../qemu-system-aarch64 --enable-kvm -m 256 -cpu host,aarch64=off \
 -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-71-generic-lpae \
 -append 'root=/dev/vda1 rootfstype=ext4 rw rootwait mem=256M console=ttyS0 console=ttyAMA0,38400n8 init=/usr/lib/cloud-init/uncloud-init ds=nocloud ubuntu-pass=upass' \
 -drive if=none,id=image,file=ubuntu-16.04-server-cloudimg-armhf-disk1.img \
 -initrd initrd.img-4.4.0-71-generic-lpae \
 -device virtio-blk-device,drive=image \
 -device virtio-net-device,netdev=net0,mac=DE:AD:BE:EF:28:AE -netdev tap,id=net0,vhost=on
```

### cpufreq

```
zypper install cpufrequtils
cpupower --cpu 0,1,2,3 frequency-info
pupower --cpu 0,1,2,3 frequency-set --governor performance
pupower --cpu 0,1,2,3 frequency-set --governor ondemand
```

+ For virtio-blk-device and virtio-net-device, see [this document](https://wiki.linaro.org/PeterMaydell/KVM/HowTo/KVMGuestSetup)

#### Netperf / netserver

```
netstat -a |grep LISTEN |grep -v unix           # whether netserver is running on port 12865
```

#### Install other utilities

```
zypper install nano emacs apache2

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
mv ngrok /usr/bin/
ngrok authtoken       <your token>
echo "(sleep 5 && /usr/bin/ngrok tcp 22 --config=/root/.ngrok2/ngrok.yml --log=stdout > /tmp/ng.log) &" >> /etc/rc.d/boot.local

git clone --depth 1 https://github.com/phoronix-test-suite/phoronix-test-suite.git
cd phoronix-test-suite
./phoronix-test-suite install himeno
```

##### Convert qcow2 image to raw image

(for executing the QEMU image on bare-metal RPI3)
```
qemu-img convert -f qcow2 -O raw ubuntu-16.04-server-cloudimg-armhf-disk1.img ubuntu-16.04-server-cloudimg-armhf-disk1-raw.img

# Again, please double-check the output device is sd card
sudo dd if=/Users/PCUser/Downloads/_RPI3/SUSE-copied-UBUNTU/ubuntu-16.04-server-cloudimg-armhf-disk1-raw.img of=/dev/rdisk2 bs=32m

```

##### Resources

+ [Raspberry Pi 3 Benchmark Results](https://openbenchmarking.org/result/1603058-GA-RASPBERRY01)
+ [OpenSUSE:RPI3](https://en.opensuse.org/HCL:Raspberry_Pi3)
+ [How to save/load to RPI's SD card (I used /dev/rdisk2 instead of /dev/disk2)](https://computers.tutsplus.com/articles/how-to-clone-raspberry-pi-sd-cards-using-the-command-line-in-os-x--mac-59911)
+ [Performance measurements on SBCs](https://learn.sparkfun.com/tutorials/single-board-computer-benchmarks/the-tests)
+ [SSH PortForwarding](http://unix.stackexchange.com/questions/115897/whats-ssh-port-forwarding-and-whats-the-difference-between-ssh-local-and-remot)

+ [virtio](https://www.ibm.com/developerworks/library/l-virtio/)
+ [vhost arch](http://blog.vmsplice.net/2011/09/qemu-internals-vhost-architecture.html)

###### Papers

+ [ARM Virtualization: Performance and Architectural Implications](http://www.cs.columbia.edu/~cdall/pubs/isca2016-dall.pdf)
+ [A Measurement Study of ARM Virtualization Performance](https://academiccommons.columbia.edu/catalog/ac:205899)
+ [KVM/ARM: The Design and Implementation of the Linux ARM Hypervisor](http://www.cs.columbia.edu/~cdall/pubs/asplos019-dall.pdf)