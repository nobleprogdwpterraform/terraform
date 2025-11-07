terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "> 0.2"
    }
  }
}

provider "virtualbox" {
  # No configuration is usually needed here
}

resource "virtualbox_vm" "ubuntu_vm" {
  name      = "ubuntu-vm"
  image     = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.ova"
  cpus      = 2
  memory    = 1024
  vram      = 16

  network_adapter {
    type           = "nat"
    host_interface = "en0" 
  }

  storage_controller {
    name = "SATA Controller"
  }
}


/*
Steps:
1. terraform init

2. terraform apply

This will:
Download the Ubuntu OVA image
Create a VirtualBox VM using that image
Set CPU, memory, and network config

*/