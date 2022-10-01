#!/bin/bash
#installing python3.8
# echo "Installing python3.8"
# python -V
# apt-get update
# apt install software-properties-common
# add-apt-repository ppa:deadsnakes/ppa
# apt install python3.8
# echo "python version - $(python --version)"
# echo "Installing pip3"
# apt-get -y install python3-pip
# echo "pip3 version - $(pip3 --version)"

#installing gcloud
apt-get install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
apt-get update && sudo apt-get install google-cloud-cli