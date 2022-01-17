/**
  create the vm for test
  */

resource "google_compute_instace" "vm-instance" {
  name         = vsr.vm_instance_name
  zone         = var.zone
  machine_type = var.vm_machine_type
  
 boot_disk {
   device_name   = var.vm_boot_disk_name
   
   intialize_param {
     image = var.vm_boot_disk_image
     size = var.vm_boot_disk_size
     type = var.vm_boot_disk_type
     )
   
  serive_account {
   email = var.vm_service_account
   scopes = [var.vm_scope]
  }
  
  network_interface {
   subnetworl = var.vm_subnetwork
   network_ip = var.network_ip
  }
}
