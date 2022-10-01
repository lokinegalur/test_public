#!/bin/bash
echo "Installing python3.8"
python -V
pip3 --version
apt-get update
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt install python3.8
echo "python version - $(python --version)"
echo "Installing pip3"
apt-get -y install python3-pip
echo "pip3 version - $(pip3 --version)"