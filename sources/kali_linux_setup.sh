#!/bin/bash

#add repositories

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt update

#install software

apt install ufw ssh git lnav fail2ban spotify-client remmina mat gimp openshot psensor audacity vlc filezilla audacious thunderbird neofetch pass qtpass code torbrowser-launcher 
wget https://www.vmware.com/go/getplayer-linux
chmox +x getplayer-linux
./getplayer-linux
apt full-upgrade	

#settings 

echo"add ssh port in ufw"
ufw allow ssh
echo "Enter port for ssh:"
read port
ufw allow $port

echo "Root login ssh disable and start service"
echo "PermitRootLogin=no" >> /etc/ssh/sshd_config
systemctl enable ufw 
systemctl enable ssh 
systemctl enable fail2ban

echo "Start service"
service ssh start 
service ufw start 
service fail2ban start

echo "Write configs" 
echo "
[greeter]
background = /home/maxmur/Pictures/kJMKLzE.jpg
theme-name = Kali-Dark
cursor-theme-name = Adwaita
xft-antialias = true
xft-hintstyle = slight
xft-rgba = rgb
font-name = Cantarell 11
icon-theme-name = Flat-Remix-Blue-Dark
xft-dpi = 96
indicators = ~host;~spacer;~session;~language;~a11y;~clock;~power;
clock-format = %d %b, %H:%M
screensaver-timeout = 60
default-user-image = #emblem-kali
position = 5%,start 45%,center
" > /etc/lightdm/lightdm-gtk-greeter.conf
echo "Enter path to your .config folder"
read config_path
cp -r $config_path ~

echo "Setup is completed"
