#!/bin/bash
# Install open vm tools for vmware

export DEBIAN_FRONTEND="noninteractive"
sudo apt-get -y update 
sudo apt-get install -y open-vm-tools
