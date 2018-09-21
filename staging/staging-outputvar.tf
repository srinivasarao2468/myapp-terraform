#output variables linux_instance_ids
locals {
  linux_instance_id = "${module.ec2_linux_pg.instance_id}"
}

output "linux_instance_ids" {
  value = "${split(",","\"${join("\",\"",local.linux_instance_id)}\"")}"
}

# output "linux_instance_ids" {
#   value = "${module.ec2_linux_pg.instance_id}"
# }

#output variables windows_instance_ids
locals {
  windows_instance_id = "${module.ec2_windows_pg.instance_id}"
}

output "windows_instance_ids" {
  value = "${split(",","\"${join("\",\"",local.windows_instance_id)}\"")}"
}

# output "windows_instance_ids" {
#   value = "${module.ec2_windows_pg.instance_id}"
# }

# output variable 'subnet_id'
locals {
  subnet_id = "${module.my_vpc.subnet_ids}"
}

output "sub_ids" {
  value = "${split(",","\"${join("\",\"",local.subnet_id)}\"")}"
}

#subnet_ids output variable
# output "sub_ids" {
#   value = "${module.my_vpc.subnet_ids}"
# }

