# rpi_init
## RPI OS Lite remote set up:
- create empty ssh file
- create wpa_supplicant.conf with the follow network configuration. NOTE: only support 2.4GHz network
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
#country=US
network={
     ssid="SSID"
     psk="password"
     key_mgmt=WPA-PSK
}
```
default user is "pi". Password is "raspberry"
- NOTE country seems to block the network until the is config in raspi-config. Might not need to set country in the wpa_supplicant

## Disable WiFi Power Management
If you are experiencing drop outs on your wifi interent connection, it could be that your wifi adapter is turning itself off after
an idle period. To stop your wifi adapter from doing this, we need to disable its power management. Either SSH to your Pi, or login to its desktop and open up a terminal.
1. Make a backup of your existing interfaces file:
`sudo cp /etc/network/interfaces /etc/network/interfaces.backup`
2. Edit the original interfaces file:
`sudo vi /etc/network/interfaces`
Assuming you haven’t edited this file before, all you need to do is delete its entire contents, and copy the following into it:
```
auto lo
iface lo inet loopback
iface eth0 inet dhcp
auto wlan0
allow-hotplug wlan0
iface wlan0 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
wireless-power off
iface default inet dhcp
```
4. Then, reboot your raspberry pi:
`sudo reboot`
5. Once the raspberry pi has rebooted, check that the wifi interface’s power management has been disabled by typing the command:
`iwconfig`
And checking for:
`Power Management:off`

REMOTE DESKTOP:
``` bash
sudo apt install xrdp
```

## ubuntu OS:
- modify network-config file to setup network
- the first boot will fail and require reboot. Therefore need monitor and keyboard before actual ssh

## Additional GDB GEF layout:
`bash -c "$(curl -fsSL http://gef.blah.cat/sh)"`

## Oh-My-ZSH:
```bash
sudo apt -y install zsh
echo $SHELL
chsh -s $(which zsh) 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
