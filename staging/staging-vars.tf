variable "region" {
  description = "default region is us-east-1"
  default     = "us-east-1"
}

variable "subnet_count" {
  type    = "string"
  default = 2
}

variable "vpc_endpoint_service" {
  default = "com.amazonaws.us-east-1.s3"
}

# Variables for Active Directory module

variable "ad_name" {
  default = "corp.mycompany.com"
}

#variable "ad_password" {}

variable "ad_edition" {
  default = "Standard"
}

variable "ad_type" {
  default = "MicrosoftAD"
}

# Variables for EC2 instance module
variable "key_name" {
  default = ""
}

variable "need_public_ip" {
  default = "false"
}

variable "windows_instance_count" {
  default = "1"
}

variable "linux_instance_count" {
  default = "1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  type = "map"

  default = {
    us-east-1 = {
      windows = "ami-0b7b74ba8473ec232"
      linux   = "ami-a4dc46db"
    }
  }
}

variable "user_data" {
  type = "map"

  default = {
    # Linux AMI Id
    linux   = "install-apache.sh"
    windows = "windows.bat"
  }
}

variable "pg_id" {
  default = ""
}

# Variables for placement group module
variable "pg_name" {
  default = "app_pg"
}

variable "pg_strategy" {
  default = "cluster"
}

# Security group variables
variable "default_sg_name" {
  default = "allow_rdp"
}

variable "default_from_port" {
  default = "3389"
}

variable "default_to_port" {
  default = "3389"
}

variable "default_protocal" {
  default = "tcp"
}

variable "default_cidr_blocks" {
  default = "0.0.0.0/0"
}
