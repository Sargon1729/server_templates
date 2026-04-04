sudo iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE
sudo iptables -A FORWARD -i tun+ -j ACCEPT
sudo iptables -A FORWARD -o tun+ -j ACCEPT

cd /etc/openvpn/server
openvpn --daemon --config server.conf
                          
