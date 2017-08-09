%include /usr/share/spin-kickstarts/fedora-live-xfce.ks

selinux --disabled
timezone Europe/Minsk

repo --name=zfs --baseurl=http://download.zfsonlinux.org/fedora/$releasever/$basearch/

%packages
kernel-devel
zfs
gcc
make
git
vim
emacs
autoconf
automake
libtool
gcc-c++
cmake
libuv-devel
libev-devel
libevent-devel
openssl-devel
snappy-devel
gdb
redhat-lsb-cxx
redhat-lsb-core
java-1.8.0-openjdk
yum-utils
valgrind
wireshark-cli
php-devel
%end

%post
mkdir -p /etc/systemd/system/getty@.service.d
cat > /etc/systemd/system/getty@.service.d/noclear.conf <<EOF
[Service]
TTYVTDisallocate=no
EOF
%end
