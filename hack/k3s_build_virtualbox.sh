#!/bin/bash

if [ -d "_output/virtualbox-k3s" ]; then rm -rf _output/virtualbox-k3s ; fi
packer build -only=virtualbox-iso -var-file=./variables-vbox.json k3s-server.json

