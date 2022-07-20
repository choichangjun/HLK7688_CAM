uci set firewall.@zone[1].input='ACCEPT'
uci set firewall.@zone[1].output='ACCEPT'
/etc/init.d/firewall restart
uci set network.lan.proto='dhcp'
uci set network.lan.ipaddr='192.168.61.1'

/etc/init.d/network restart
uci set system.@system[0].timezone='KST-9'
/etc/init.d/system restart
