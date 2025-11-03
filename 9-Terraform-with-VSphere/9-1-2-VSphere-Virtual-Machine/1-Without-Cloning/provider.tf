
# This block configures the vSphere provider to connect to vCenter.
# Replace placeholder values with actual vCenter server IP or FQDN and credentials.

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If using self-signed certs (typical in internal vSphere)
  allow_unverified_ssl = true
}
