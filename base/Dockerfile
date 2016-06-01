FROM ubuntu:14.10

RUN sudo sed -i -r 's/([a-z]{2}\.)?archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
 && sudo sed -i -r 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y git-core subversion build-essential gcc-multilib libncurses5-dev libssl-dev zlib1g-dev gawk flex gettext wget unzip python \
 && apt-get clean \
 && useradd -m openwrt \
 && echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

WORKDIR /home/openwrt/
USER openwrt
