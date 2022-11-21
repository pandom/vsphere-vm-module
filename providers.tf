
terraform {
    
  required_providers {

    vsphere = {
      source  = "registry.terraform.io/hashicorp/vsphere"
      version = "2.2.0"
    }

  }
}

provider "vsphere" {
  #vsphere_server = var.vsphere_server
  # Configuration options
}

data "vsphere_datacenter" "dc" {
  name = local.vsphere_data.datacenter
}

locals {
  vsphere_data  = var.vsphere_data[var.environment]
  local_network = "seg-general"
}