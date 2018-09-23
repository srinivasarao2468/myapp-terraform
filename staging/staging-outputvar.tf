#output variables linux_instance_ids
locals {
  linux_instance_ids = "${module.ec2_linux_pg.instance_ids}"
}

output "linux_instance_ids" {
  value = "${split(",","\"${join("\",\"",local.linux_instance_ids)}\"")}"
}

#output variables windows_instance_ids
locals {
  windows_instance_ids = "${module.ec2_windows_pg.instance_ids}"
}

output "windows_instance_ids" {
  value = "${split(",","\"${join("\",\"",local.windows_instance_ids)}\"")}"
}

# output variable 'subnet_id'
locals {
  subnet_ids = "${module.my_vpc.subnet_ids}"
}

output "sub_ids" {
  value = "${split(",","\"${join("\",\"",local.subnet_ids)}\"")}"
}
