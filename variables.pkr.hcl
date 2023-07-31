#Public variables
locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }

#############
variable "cluster" {
  type    = string
}

variable "datastore" {
  type    = string
}

variable "network" {
  type    = string
}

variable "password" {
  type    = string
}

variable "username" {
  type    = string
}

variable "vcenter_server" {
  type    = string
}

variable "vm_name" {
  type    = string
}

variable "ssh_username" {
  type    = string
}

variable "ssh_password" {
  type    = string
}
