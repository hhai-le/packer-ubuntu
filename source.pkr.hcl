source "vsphere-iso" "ubuntu" {
  CPUs            = "${var.cpu}"
  RAM             = "${var.memory}"
  RAM_reserve_all = true
  boot_command = ["c<wait>",
    "linux /casper/vmlinuz --- autoinstall ds=\"nocloud-net\"",
    "<enter><wait>",
    "initrd /casper/initrd",
    "<enter><wait>",
    "boot",
  "<enter>"]
  boot_wait            = "${var.boot_wait}"
  cd_files             = ["./http/meta-data", "./http/user-data"]
  cd_label             = "cidata"
  cluster              = "${var.cluster}"
  convert_to_template  = true
  datastore            = "${var.datastore}"
  disk_controller_type = "${var.disk_controller_type}"
  folder               = "${var.vm_folder}"
  guest_os_type        = "${var.guest_os_type}"
  http_directory       = "http"
  insecure_connection  = "true"
  iso_checksum         = "${var.iso_checksum}"
  iso_urls             = "${var.iso_urls}"
  network_adapters {
    network      = "${var.network}"
    network_card = "vmxnet3"
  }
  vcenter_password         = var.password
  ssh_handshake_attempts = "100"	  
  ssh_timeout = "20m"
  ssh_password     = "${var.ssh_password}"
  ssh_username     = "${var.ssh_username}"
  shutdown_command = "echo \"${var.ssh_password}\"|sudo -S shutdown -P now"
  storage {
    disk_size             = "${var.vm_disk_size}"
    disk_thin_provisioned = true
  }
  username       = "${var.vcenter_username}"
  vcenter_server = "${var.vcenter_server}"
  vm_name        = "${var.vm_name}"
}