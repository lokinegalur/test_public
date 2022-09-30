#!/bin/bash
apt-get update
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt install python3.8
python3.8 --version