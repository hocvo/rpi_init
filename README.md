# rpi_init
RPI OS Lite remote set up:
create empty ssh file
create wpa_supplicant.conf with the follow network configuration. NOTE: only support 2.4GHz network
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=US
network={
     ssid="SSID"
     psk="password"
     key_mgmt=WPA-PSK
}
default user = pi


ubuntu OS:
modify network-config file to setup network
the first boot will fail and require reboot. Therefore need monitor and keyboard before actual ssh
