# Variables for EC2 instance module

variable "ec2_key" {}

variable "subnet_id" {
  type = "list"
}

variable "vpc_id" {
  type = "string"
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

#Security group variables
variable "security_group_id" {
  type = "list"
}

variable "default_sg_name" {
  default = "allow_ssh"
}

variable "default_from_port" {
  default = "22"
}

variable "default_to_port" {
  default = "22"
}

variable "default_protocal" {
  default = "tcp"
}

variable "default_cidr_blocks" {
  default = "0.0.0.0/0"
}
