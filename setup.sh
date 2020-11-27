#!/bin/bash

echo 'Move scripts file in folders'
chmod +x .pus.sh
chmod +x .update.sh
chmod +x kali_linux_setup.sh
sudo mv .pus.sh /usr/bin/
mv .update.sh /usr/bin/.update.sh
mv kali_linux_setup.sh ~/

echo 'alias upass='/usr/bin/.pus.sh'' >> ~/.bashrc
sudo echo 'alias upass='/usr/bin/.update.sh'' >> /root/.bashrc
echo 'alias upgr='/usr/bin/.pus.sh'' >> /root/.bashrc
sudo echo 'alias upgr='/usr/bin/.update.sh'' >> /root/.bashrc
