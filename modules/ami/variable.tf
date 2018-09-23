variable "creating_ami_name" {
  #type = "list"
}

variable "snapshot_without_reboot" {
  default = true
}

variable "instance_ids" {
  type = "list"
}

variable "region" {
  default = "us-east-1"
}
