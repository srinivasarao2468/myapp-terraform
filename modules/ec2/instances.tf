# EC2
resource "aws_instance" "instances" {
  count                       = "${var.instances_count}"
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  user_data                   = "${file("${path.module}/scripts/${var.user_data}")}"
  associate_public_ip_address = "${var.need_public_ip}"
  subnet_id                   = "${var.subnet_id[count.index]}"
  placement_group             = ""
  vpc_security_group_ids      = ["${var.security_group_ids}"]
  key_name                    = "${var.ec2_key}"
}
