#!/bin/bash

echo 'Move scripts file in folders'
chmod +x sources/.pus.sh
chmod +x sources/.update.sh
chmod +x sources/kali_linux_setup.sh
sudo mv sources/.pus.sh /usr/bin/
mv sources/.update.sh ~/
mv sources/kali_linux_setup.sh ~/

echo 'alias upass='/usr/bin/.pus.sh'' >> ~/.bashrc
