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

variable "vsphere_user"     { type = string }
variable "vsphere_password" { type = string  sensitive = true }
variable "vsphere_server"   { type = string }

variable "datacenter"       { type = string }
variable "datastore"        { type = string }
variable "cluster"          { type = string }
variable "network_name"     { type = string }
variable "template_name"    { type = string }

variable "new_vm_name"      { type = string }
variable "vm_cpus"          { type = number  default = 2 }
variable "vm_memory_mb"     { type = number  default = 4096 }
variable "domain"           { type = string  default = "example.local" }
variable "time_zone"        { type = string  default = "UTC" }
variable "vm_ip"            { type = string }
variable "vm_netmask"       { type = number  default = 24 }
variable "vm_gateway"       { type = string }
variable "dns_servers"      { type = list(string) default = ["8.8.8.8", "8.8.4.4"] }

