```
linux:~/os/kvm-unit-tests/tests # QEMU=~/os/qemu-patched/aarch64-softmmu/qemu-system-aarch64 ./pci-test
BUILD_HEAD=95062c20
timeout -k 1s --foreground 90s /root/os/qemu-patched/aarch64-softmmu/qemu-system-aarch64 -nodefaults -machine virt,kernel_irqchip=off,accel=kvm -cpu host -device virtio-serial-device -device virtconsole,chardev=ctd -chardev testdev,id=ctd
 -device pci-testdev -display none -serial stdio -kernel /tmp/tmp.m7QuEJeQpy -smp 1
00.00.0 1b36:0008 type 00 progif 00 class 06 subclass 00
00.01.0 1b36:0005 type 00 progif 00 class 00 subclass ff
        BAR#0 [10000000-10000fff MEM32]
        BAR#1 [3eff0000-3eff00ff PIO]
pci-testdev mem: mmio-no-eventfd
pci-testdev mem: mmio-wildcard-eventfd
pci-testdev mem: mmio-datamatch-eventfd
pci-testdev  io: portio-no-eventfd
pci-testdev  io: portio-wildcard-eventfd
pci-testdev  io: portio-datamatch-eventfd
PASS: PCI test device passed 6/6 tests
SUMMARY: 1 tests
PASS pci-test (1 tests)
```