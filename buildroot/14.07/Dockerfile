FROM leesah/openwrt-base:latest

RUN git clone --bare --depth 1 git://git.openwrt.org/14.07/openwrt.git .git \
 && git config core.bare false \
 && git reset --hard \
 && scripts/feeds update
