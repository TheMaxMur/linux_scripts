#!/bin/bash

echo 'Move scripts file in folders'
sudo mv sources/.pus.sh /usr/bin/
mv sources/.update.sh ~/
mv sources/kali_linux_setup.sh ~/

echo 'alias upass='/usr/bin/.pus.sh'' >> ~/.bashrc
