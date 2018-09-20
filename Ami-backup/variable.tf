variable "windows_ami_name" {
  default = "sample_ami"
}

variable "linux_ami_name" {
  default = "sample_ami"
}

variable "snapshot_without_reboot" {
  default = true
}

# variable "instance_id" {
#   type = "list"
# }

variable "linux_instance_ids" {
  type = "list"
}

variable "windows_instance_ids" {
  type = "list"
}
