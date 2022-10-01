#!/bin/bash
echo "Installing python3.8"
apt-get update
# apt install software-properties-common
# add-apt-repository ppa:deadsnakes/ppa
# apt install python3.8
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
cd Python-3.8.0
./configure --enable-optimizations
make -j 8
make altinstall
echo "python version - $(python3.8 --version)"
echo "Installing pip3"
apt-get -y install python3-pip
echo "pip3 version - $(pip3 --version)"