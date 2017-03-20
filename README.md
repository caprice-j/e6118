
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

Then set SD card on RPI3, boot it, and ssh to it.

#### Setting up and booting guest VMs

On RPI3, execute

```
zypper install git
git clone --branch no-kvm-irqchip --single-branch --depth 5 https://github.com/agraf/qemu qemu-patched
cd qemu-patched

# install necessary packages for compiling qemu
zypper install gcc gcc-c++ zlib-devel gtk2-devel libfdt1-devel make
./configure --target-list=aarch64-softmmu --enable-kvm --disable-werror
make -j4

# make -j4 takes a few minutes

cd aarch64-softmmu


# Trial 1. check QEMU by executing a lightweight image (buildroot)
# see: https://www.bennee.com/~alex/blog/2014/05/09/running-linux-in-qemus-aarch64-system-emulation-mode/

wget http://people.linaro.org/~alex.bennee/images/aarch64-linux-3.15rc2-buildroot.img

# boot builtboot for test with kvm ( ~ 1 sec )
./qemu-system-aarch64 --enable-kvm -cpu host -machine type=virt,kernel_irqchip=off -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"

# boot without kvm ( ~ 50 sec )
./qemu-system-aarch64 -cpu cortex-a53 -machine type=virt -nographic -smp 1 -m 256 -kernel ../../aarch64-linux-3.15rc2-buildroot.img --append "console=ttyAMA0"


# Trial 2. boot 64-bit Ubuntu

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

# by typing 'quit' in QEMU monitor, exit the VM.
# All the packages installed are contained in the image.

# Trial 3. boot ubuntu 32bit by qemu-system-aarch64 (aarch32 execution mode)

wget http://cloud-images.ubuntu.com/xenial/20170311/xenial-server-cloudimg-armhf-disk1.img
# extract initrd.img-4.4.0-66-generic-lpae and vmlinuz-4.4.0-66-generic-lpae from the above img

taskset -c 3-3 ../qemu-system-aarch64 --enable-kvm -m 300 -cpu host,aarch64=off \
 -nographic -machine virt,kernel_irqchip=off \
 -kernel vmlinuz-4.4.0-66-generic-lpae \
 -append 'root=/dev/vda1 rw rootwait mem=300M console=ttyS0 \
  console=ttyAMA0,38400n8 init=/usr/lib/cloud-init/uncloud-init \
  ds=nocloud ubuntu-pass=upass' \
 -drive if=none,id=image,file=xenial-server-cloudimg-armhf-disk1.img \
 -initrd initrd.img-4.4.0-66-generic-lpae \
 -device virtio-blk-device,drive=image \
 -netdev user,id=user0,hostfwd=tcp::5555-:22 \
 -device virtio-net-device,netdev=user0


 # login by username "ubuntu" and password "upass"
# about aarch64=off flag, see: https://www.redhat.com/archives/libvir-list/2015-May/msg00770.html

 # after specyfing -netdev user,id=user0,hostfwd=tcp::5556-:12865 
ssh -p 5555 ubuntu@localhost        # on another terminal

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


https://github.com/phoronix-test-suite/phoronix-test-suite.git
```

##### Resources

+ [Raspberry Pi 3 Benchmark Results](https://openbenchmarking.org/result/1603058-GA-RASPBERRY01)
+ [OpenSUSE:RPI3](https://en.opensuse.org/HCL:Raspberry_Pi3)
+ [How to save/load to RPI's SD card (I used /dev/rdisk2 instead of /dev/disk2)](https://computers.tutsplus.com/articles/how-to-clone-raspberry-pi-sd-cards-using-the-command-line-in-os-x--mac-59911)
+ [Performance measurements on SBCs](https://learn.sparkfun.com/tutorials/single-board-computer-benchmarks/the-tests)