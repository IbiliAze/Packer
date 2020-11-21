#!/bin/bash


packer validate packer.json #only works for JSON

packer fix packer.json #fix the formatting (STDOUT)

packer fix > packer2.json 

packer build packer.sh

aws ssm get-parameters --names /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 --region us-east-1
 
