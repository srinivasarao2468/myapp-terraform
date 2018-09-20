module "linux_ami_backup" {
  source                  = "../modules/ami"
  created_ami_name        = "${var.linux_ami_name}"
  instance_id             = "${var.linux_instance_ids}"
  snapshot_without_reboot = "${var.snapshot_without_reboot}"
}

# output "ami_id" {
#   value = "${module.ami_creation.ami_id}"
# }

module "windows_ami_backup" {
  source                  = "../modules/ami"
  created_ami_name        = "${var.windows_ami_name}"
  instance_id             = "${var.windows_instance_ids}"
  snapshot_without_reboot = "${var.snapshot_without_reboot}"
}

output "linux_ami_id" {
  value = "${module.linux_ami_backup.ami_id}"
}

output "windows_ami_id" {
  value = "${module.windows_ami_backup.ami_id}"
}
