provider "aws" {
  region = "${var.region}"
}

# Build VPC and Subnets
module "my_vpc" {
  source       = "../modules/vpc"
  vpc_id       = "${module.my_vpc.vpc_id}"
  subnet_count = "${var.subnet_count}"
  azs          = "${data.aws_availability_zones.azs.names}"
}

module "vpc_endpoint" {
  source               = "../modules/vpc-endpoints"
  vpc_id               = "${module.my_vpc.vpc_id}"
  vpc_endpoind_service = "${var.vpc_endpoind_service}"
  route_table_ids      = ["${module.my_vpc.route_tbl_id}"]
}

# MicrosoftAD
# module "microsoft_ad" {
#   source      = "../modules/microsoft-ad"
#   ad_name     = "${var.ad_name}"
#   ad_password = "${var.ad_password}"
#   ad_edition  = "${var.ad_edition}"
#   ad_type     = "${var.ad_type}"
#   vpc_id      = "${module.my_vpc.vpc_id}"
#   subnet_ids  = "${module.my_vpc.subnet_ids}"
# }

# Create Placement Group for HPC
module "placement_group" {
  source      = "../modules/placement-groups"
  pg_name     = "${var.pg_name}"
  pg_strategy = "${var.pg_strategy}"
}
