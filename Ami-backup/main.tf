locals {
  lin_ami_name = "${var.linux_ami_name}-${replace(timestamp(),":","")}"
}

locals {
  win_ami_name = "${var.windows_ami_name}-${replace(timestamp(),":","")}"
}

#Module to create snapshots of linux servers
module "linux_ami_backup" {
  source                  = "../modules/ami"
  creating_ami_name       = "${local.lin_ami_name}"
  instance_ids            = "${var.linux_instance_ids}"
  snapshot_without_reboot = "${var.snapshot_without_reboot}"
}

#outputs variables of linux ami ids
output "linux_ami_ids" {
  value = "${module.linux_ami_backup.ami_ids}"
}

#Module to create snapshots of windows servers
module "windows_ami_backup" {
  source                  = "../modules/ami"
  creating_ami_name       = "${local.win_ami_name}"
  instance_ids            = "${var.windows_instance_ids}"
  snapshot_without_reboot = "${var.snapshot_without_reboot}"
}

#output variables of windows ami ids
output "windows_ami_ids" {
  value = "${module.windows_ami_backup.ami_ids}"
}
