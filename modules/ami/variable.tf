variable "created_ami_name" {
  default = "sample_ami"
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
