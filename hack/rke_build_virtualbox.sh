#!/bin/bash

if [ -d "_output/virtualbox-rke" ]; then rm -rf _output/virtualbox-rke ; fi
packer build -only=virtualbox-iso -var-file=./variables-vbox.json rke-server.json
