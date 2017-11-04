# Kickstart file for building a Fedora-based hacking box.
# I use this to build and test libffi for aarch64.

auth --enableshadow --passalgo=sha512
# Use network installation

# Use text mode install
text
# Run the Setup Agent on first boot
firstboot --enable
ignoredisk --only-use=sda
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8

# Network information
network  --bootproto=dhcp --device=eth0 --ipv6=auto --activate
network  --hostname=localhost.localdomain
# Root password - hacking
rootpw --plaintext hacking
# Do not configure the X Window System
skipx
# System timezone
timezone US/Eastern --isUtc
# System bootloader configuration
bootloader --location=mbr --boot-drive=sda
autopart --type=lvm
# Partition clearing information
clearpart --all --initlabel --drives=sda

%packages
@^minimal-environment
gcc
gcc-c++
git
patch
texinfo
dejagnu
autoconf
automake
libtool

%end


%anaconda
pwpolicy root --minlen=8 --minquality=50 --strict --nochanges --emptyok
pwpolicy user --minlen=8 --minquality=50 --strict --nochanges --emptyok
pwpolicy luks --minlen=8 --minquality=50 --strict --nochanges --emptyok
%end
