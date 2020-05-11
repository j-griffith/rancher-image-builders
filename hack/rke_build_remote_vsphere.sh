#!/bin/bash

packer build -only=vsphere-iso -var-file=./variables.json rke-server.json

# Remove empty OVA file in local builder directory (not sure why it gets created)
if [ -d "../rke-ubuntu.ova" ]; then rm -rf ../rke-ubuntu.ova ; fi

# TODO: Add a govc call to pull down the resultant image?
