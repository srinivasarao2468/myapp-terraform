variable "ec2_key" {}

variable "subnet_id" {
  type = "list"
}

variable "need_public_ip" {
  default = "false"
}

variable "user_data" {
  default = "./scripts/install-apache.sh"
}

variable "instances_count" {
  default = "1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {}

variable "pg_id" {}
