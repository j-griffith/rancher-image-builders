#!/bin/bash
sudo apt-get install -y build-essential dkms linux-headers-$(uname -r)
sudo mkdir /tmp/mount
sudo mount -t iso9660 -o loop /home/ubuntu/VBoxGuestAdditions.iso /tmp/mount
sudo /tmp/mount/VBoxLinuxAdditions.run
sudo umount /home/ubuntu/VBoxGuestAdditions.iso; sudo rm -rf /home/ubuntu/VBoxGuestAdditions.iso
sudo apt-get install -y cloud-init
