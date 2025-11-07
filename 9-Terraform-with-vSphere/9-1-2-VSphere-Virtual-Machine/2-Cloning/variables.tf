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

variable "vsphere_user"        { type = string }
variable "vsphere_password"    { type = string  sensitive = true }
variable "vsphere_server"      { type = string }

variable "datacenter"          { type = string }
variable "datastore"           { type = string }
variable "cluster"             { type = string }
variable "network_name"        { type = string }

variable "vm_name"             { type = string }
variable "vm_cpus"             { type = number  default = 2 }
variable "vm_memory_mb"        { type = number  default = 2048 }
variable "guest_id"            { type = string  default = "otherGuest64" }
variable "network_adapter_type" { type = string  default = "vmxnet3" }
variable "vm_disk_size_gb"      { type = number  default = 20 }
