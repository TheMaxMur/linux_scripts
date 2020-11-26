#!/bin/bash

echo 'Move scripts file in folders'
chmod +x sources/.pus.sh
chmod +x sources/.update.sh
chmod +x sources/kali_linux_setup.sh
sudo mv sources/.pus.sh /usr/bin/
mv sources/.update.sh /usr/bin/.update.sh
mv sources/kali_linux_setup.sh ~/

echo 'alias upass='/usr/bin/.pus.sh'' >> ~/.bashrc
sudo echo 'alias upass='/usr/bin/.update.sh'' >> /root/.bashrc
echo 'alias upgr='/usr/bin/.pus.sh'' >> /root/.bashrc
sudo echo 'alias upgr='/usr/bin/.update.sh'' >> /root/.bashrc
