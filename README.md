# Packer files to build RKE or K3S OVA using vsphere-iso, vmware-iso or virtualbox-iso

This builds a simple Ubuntu 18.04 OVA or QCOW2 (WIP) with RKE or K3s and Helm-3 installed.

## Requirements

Tested with:

- Hashicorp Packer v1.5.5 (built-in vsphere-iso plugin)
- Linux
  - Remote vSphere 6.x
  - Local VMWare Workstation for Linux
  - Local Virtualbox 6.1 for Linux
- MacOS
  - Remote vSphere 6.x
  - Local VMWare Fusion

## Build a VM image

Use sample config files to create variables.json (VMware) or variables-vbox.json (Virtualbox) with your specific information.

Run make for your build platform (e.g. `make k3s-ova-local`). Make creates a temporary VM named `k3s-ubuntu` or `rke-ubuntu`, respectively, so remove duplicate VM (if any) or search-and-replace these strings in the JSON files and scripts.

Created OVA files are stored in `_output` folder except for vSphere which remains on vSphere as a VM template.

Imported VM can be accessed via passwordless SSH using public key set in the variables file. Console access for users remains, with password set in the variables file.

### rke-ova-local or k3s-ova-local

Builds an OVA on your local machine using VMware Workstation, Player, Fusion, etc.

### rke-ova-vsphere or k3s-ova-vsphere

Builds an OVA on a remote vSphere cluster.

### rke-ova-virtualbox or k3s-ova-virtualbox

Builds an OVA using Virtualbox 6.1. If you deploy OVA with NAT, remember to create port forwarding to guest (because password SSH authentication is disabled).

### qcow2

Not implemented yet, but will enable building a qcow2 for use by KVM.
