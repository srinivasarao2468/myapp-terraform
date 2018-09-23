# Launch Linux EC2 Instances in Placement Group
module "ec2_linux_pg" {
  source             = "../modules/ec2"
  ec2_key            = "${var.key_name}"
  subnet_id          = ["${module.my_vpc.subnet_ids}"]
  vpc_id             = "${module.my_vpc.vpc_id}"
  need_public_ip     = "${var.need_public_ip}"
  instances_count    = "${var.linux_instance_count}"
  security_group_ids = "${module.ec2_linux_pg.security_group_ids}"
  instance_type      = "${var.instance_type}"
  pg_id              = "${var.pg_id}"
  ami                = "${lookup(var.ami[var.region],"linux")}"
  user_data          = "${var.user_data["linux"]}"
}

# Launch Windows EC2 Instances in Placement Group
module "ec2_windows_pg" {
  source              = "../modules/ec2"
  ec2_key             = "${var.key_name}"
  subnet_id           = ["${module.my_vpc.subnet_ids}"]
  vpc_id              = "${module.my_vpc.vpc_id}"
  security_group_ids  = "${module.ec2_windows_pg.security_group_ids}"
  need_public_ip      = "${var.need_public_ip}"
  instances_count     = "${var.windows_instance_count}"
  instance_type       = "${var.instance_type}"
  user_data           = "${var.user_data["windows"]}"
  pg_id               = "${var.pg_id}"
  ami                 = "${lookup(var.ami[var.region],"windows")}"
  default_sg_name     = "${var.default_sg_name}"
  default_from_port   = "${var.default_from_port}"
  default_to_port     = "${var.default_to_port}"
  default_protocal    = "${var.default_protocal}"
  default_cidr_blocks = "${var.default_cidr_blocks}"
}
