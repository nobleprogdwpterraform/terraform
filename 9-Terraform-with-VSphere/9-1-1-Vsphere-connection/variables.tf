
# Declare variables to hold vSphere connection details

variable "vsphere_user" {
  description = "Username for vSphere login"
  type        = string
}

variable "vsphere_password" {
  description = "Password for vSphere login"
  type        = string
  sensitive   = true
}

variable "vsphere_server" {
  description = "vSphere server IP or FQDN (e.g., vcenter.example.com)"
  type        = string
}
