#!/bin/sh

# test if ptyon is not installed
python --version
ret=$?
if ["${ret}" == "0"]; then 
#	sudo apt-get install python
    echo aaa
fi

# install python event & pip & crypto
sudo apt-get install python-gevent python-pip python-m2crypto

# install shadowsocks
pip install shadowsocks

# check file 
if [-f config.json];then
    rm config.json
fi

# get system ip address
PATH=$PATH:./bin
serverip=get_system_ip.py
print ${PATH}

# create file


# start server
#ssserver -c config.json

