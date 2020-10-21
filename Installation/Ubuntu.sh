#!/bin/bash


echo step 1
wget https://releases.hashicorp.com/packer/1.6.4/packer_1.6.4_linux_amd64.zip

echo step 2
unzip packer_1.6.4_linux_amd64.zip

echo step 3
sudo mv packer /usr/bin/

echo step 4
packer version

echo step 5
sudo apt install -y golang-go

echo step 6
cd ~

echo step 7
git clone https://github.com/SwampDragons/packer-provisioner-comment.git

echo step 8
cd packer-provisioner-comment

echo step 9
go mod download

echo step 10
go build

echo step 11
mkdir -p ~/.packer.d/plugins

echo step 12
mv main ~/.packer.d/plugins/packer-provisioner-comment


