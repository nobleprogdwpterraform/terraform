
resource "vsphere_virtual_machine" "vm_basic" {
  name             = var.vm_name
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.ds.id

  num_cpus = var.vm_cpus
  memory   = var.vm_memory_mb
  guest_id = var.guest_id

  network_interface {
    network_id   = data.vsphere_network.net.id
    adapter_type = var.network_adapter_type
  }

  disk {
    label            = "disk0"
    size             = var.vm_disk_size_gb
    eagerly_scrub    = false
    thin_provisioned = true
  }
}