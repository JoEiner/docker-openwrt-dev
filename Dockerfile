FROM ubuntu:14.10

RUN apt-get update \
 && apt-get install -y git-core subversion build-essential gcc-multilib \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python \
 && apt-get clean \
 && useradd -m openwrt \
 && echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt \
 && sudo -iu openwrt git clone --bare --depth 1 git://git.openwrt.org/openwrt.git .git \
 && sudo -iu openwrt git config core.bare false \
 && sudo -iu openwrt git reset --hard \
 && sudo -iu openwrt scripts/feeds update

WORKDIR /home/openwrt/
USER openwrt
