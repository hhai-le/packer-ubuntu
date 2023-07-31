#Public variables
vm_name = "ubuntu2204-template"
vm_folder = "VNL-Network"
guest_os_type = "ubuntu64Guest"
iso_urls = ["iso/ubuntu-22.04.2-live-server-amd64.iso", "https://releases.ubuntu.com/22.04/ubuntu-22.04.2-live-server-amd64.iso"]
iso_checksum = "sha256:5E38B55D57D94FF029719342357325ED3BDA38FA80054F9330DC789CD2D43931"
vm_disk_size = 32768
disk_controller_type = ["pvscsi"]
boot_wait = "3s"
cpu = 4
memory = 4096
insecure_connection  = "true"

#vcenter_password =
#vcenter_username =
#vcenter_server =
#ssh_username =
#ssh_password =
#network =
#cluster =
#datastore =