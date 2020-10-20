#!/bin/bash


echo step 1
wget https://releases.hashicorp.com/packer/1.6.4/packer_1.6.4_linux_amd64.zip

echo step 2
unzip packer_1.6.4_linux_amd64.zip

echo step 3
sudo mv packer /usr/bin/

echo step 4
packer version

