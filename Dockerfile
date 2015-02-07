FROM ubuntu:14.10

RUN apt-get update \
 && apt-get install -y git-core subversion build-essential gcc-multilib \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python \
 && apt-get clean \
 && adduser --disabled-password --no-create-home --gecos '' openwrt \
 && echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt \
 && chmod a+w /home/ \
 && sudo -u openwrt git clone git://git.openwrt.org/openwrt.git /home/ \
 && sudo -u openwrt /home/openwrt/scripts/feeds update

WORKDIR /home/openwrt/
USER openwrt
