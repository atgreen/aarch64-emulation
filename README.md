# Emulating aarch64 Fedora Linux on x86_64 Fedora Linux

I use an emulated aarch64 Linux platform for building and testing
libffi on my vanilla x86_64 Fedora Linux laptop.

Here's the command I use to build the VM...

    virt-install \
    --name Fedora_26_AArch64 --ram 4096 --arch aarch64 \
    --disk size=16 --os-variant fedora26 \
    --location https://dl.fedoraproject.org/pub/fedora-secondary/releases/26/Everything/aarch64/os/
    --extra-args \
    "inst.ks=https://raw.githubusercontent.com/atgreen/aarch64-emulation/master/Fedora-Hacking-AArch64.ks"


Anthony Green
green@moxielogic.com
