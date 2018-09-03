# Launch Linux EC2 Instances in Placement Group
module "ec2_linux_pg" {
  source          = "../modules/ec2"
  ec2_key         = "${var.key_name}"
  subnet_id       = ["${module.my_vpc.subnet_ids}"]
  need_public_ip  = "${var.need_public_ip}"
  instances_count = "${var.linux_instance_count}"
  instance_type   = "${var.instance_type}"

  pg_id = "${var.pg_id}"
  ami   = "${lookup(var.ami[var.region],"linux")}"

  user_data = "${var.user_data["linux"]}"
}

# Launch Windows EC2 Instances in Placement Group
module "ec2_windows_pg" {
  source          = "../modules/ec2"
  ec2_key         = "${var.key_name}"
  subnet_id       = ["${module.my_vpc.subnet_ids}"]
  need_public_ip  = "${var.need_public_ip}"
  instances_count = "${var.windows_instance_count}"
  instance_type   = "${var.instance_type}"
  user_data       = "${var.user_data["windows"]}"
  pg_id           = "${var.pg_id}"
  ami             = "${lookup(var.ami[var.region],"windows")}"
}
