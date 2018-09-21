variable "created_ami_name" {
  #type = "list"
}

variable "snapshot_without_reboot" {
  default = true
}

variable "instance_id" {
  type = "list"
}

variable "region" {
  default = "us-east-1"
}
