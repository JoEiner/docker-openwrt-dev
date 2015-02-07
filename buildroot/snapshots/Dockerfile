FROM leesah/openwrt-base:latest

RUN git clone --bare --depth 1 git://git.openwrt.org/openwrt.git .git \
 && git config core.bare false \
 && git reset --hard \
 && scripts/feeds update
