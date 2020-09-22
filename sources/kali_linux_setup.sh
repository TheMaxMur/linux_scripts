#!/bin/bash

#add repositories

apt update
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
apt update

#install software

apt install ufw ssh git lnav fail2ban spotify remmina mat gimp openshot psensor audacity vlc filezilla audacious thunderbird neofetch
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

echo"Start service"
service ssh start 
service ufw start 
service fail2ban start

echo "Setup is completed"
