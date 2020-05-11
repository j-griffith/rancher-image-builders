SHELL := /usr/bin/env bash

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: rke-ova-local
rke-ova-local: ## Build an OVA using your local VMware (Workstation, Player, etc.) 
	hack/rke_build_local_vmware.sh

.PHONY: rke-ova-vsphere 
rke-ova-vsphere: ## Build an OVA on a remote vSphere cluster (requires update to variables in the variables-vbox.json manifest)
	hack/rke_build_remote_vsphere.sh

.PHONY: k3s-ova-local
k3s-ova-local: ## Build an OVA using your local VMWare (Workstation, Player etc.) 
	hack/k3s_build_local_vmware.sh

.PHONY: k3s-ova-vsphere 
k3s-ova-vsphere: ## Build an OVA on a remote vSphere cluster (requires update to variables in the variables-vbox.json manifest)
	hack/k3s_build_remote_vsphere.sh

.PHONY: rke-ova-virtualbox 
rke-ova-virtualbox: ## Build an OVA on local Virtualbox instance (optionally update variables in the variables-vbox.json manifest)
	hack/rke_build_virtualbox.sh

.PHONY: k3s-ova-virtualbox 
k3s-ova-virtualbox: ## Build an OVA on local Virtualbox instance (optionally update variables in the variables-vbox.json manifest)
	hack/k3s_build_virtualbox.sh

.PHONY: qcow2
qcow2: ## Build a qcow2 using a qemu/kvm build system
