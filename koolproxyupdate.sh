wget 'https://raw.githubusercontent.com/houzi-/CDN/master/kp.dat' -O files/usr/share/koolproxy/data/rules/kp.dat
wget 'https://cdn.jsdelivr.net/gh/ycg31/KoolProxy/rules/yhosts.txt' -O files/usr/share/koolproxy/data/rules/yhosts.txt
wget 'https://cdn.jsdelivr.net/gh/ycg31/KoolProxy/rules/fanboy.txt' -O files/usr/share/koolproxy/data/rules/fanboy.txt
wget 'https://cdn.jsdelivr.net/gh/ycg31/KoolProxy/rules/easylistchina.txt' -O files/usr/share/koolproxy/data/rules/easylistchina.txt

wget 'https://raw.fastgit.org/fw869/AD/master/user.txt' -O files/usr/share/koolproxy/data/user.txt
cp files/usr/share/koolproxy/data/user.txt files/usr/share/koolproxy/data/rules/user.txt
wget 'https://raw.fastgit.org/fw869/AD/master/koolproxy_ipset.conf' -O files/usr/share/koolproxy/koolproxy_ipset.conf

wget 'https://kprule.com/user.txt' -O files/usr/share/koolproxy/data/user.txt
wget 'https://raw.githubusercontent.com/houzi-/CDN/master/binary/v3.8.5/arm' -O files/bin/arm
wget 'https://raw.githubusercontent.com/houzi-/CDN/master/binary/v3.8.5/i386' -O files/bin/i386
wget 'https://raw.githubusercontent.com/houzi-/CDN/master/binary/v3.8.5/mips' -O files/bin/mips
wget 'https://raw.githubusercontent.com/houzi-/CDN/master/binary/v3.8.5/mipsel' -O files/bin/mipsel
wget 'https://raw.githubusercontent.com/houzi-/CDN/master/binary/v3.8.5/x86_64' -O files/bin/x86_64
chmod +x files/bin/*

wget https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt -O- | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/youku/d' files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}/d' files/usr/share/koolproxy/dnsmasq.adblock

