variable "subnet_count" {
  type    = "string"
  default = 2
}

variable "region" {
  default = "us-east-1"
}

variable "vpc_endpoind_service" {
  default = "com.amazonaws.us-east-1.s3"
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
