# Security group of linux instances

resource "aws_security_group" "linux_servers-sg" {
  name        = "${var.default_sg_name}"
  description = "Allow ssh inbound traffic"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = "${var.default_from_port}"
    to_port     = "${var.default_to_port}"
    protocol    = "${var.default_protocal}"
    cidr_blocks = ["${var.default_cidr_blocks}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# resource "aws_security_group" "windows_servers-sg" {
#   name        = "allow_RDP"
#   description = "Allow ssh inbound traffic"
#   vpc_id      = "${var.vpc_id}"
#
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# Output of security group id
output "security_group_id" {
  value = "${aws_security_group.linux_servers-sg.*.id}"
}

# output "windows_sg_id" {
#   value = "${aws_security_group.windows_servers-sg.*.id}"
# }

