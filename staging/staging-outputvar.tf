#subnet_ids output variable
output "sub_ids" {
  value = "${module.my_vpc.subnet_ids}"
}

output "linux_instance_ids" {
  value = "${module.ec2_linux_pg.instance_id}"
}

output "windows_instance_ids" {
  value = "${module.ec2_windows_pg.instance_id}"
}
