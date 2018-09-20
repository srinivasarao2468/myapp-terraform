resource "aws_ami_from_instance" "ami_creation" {
  count                   = "${length(var.instance_id)}"
  name                    = "${var.created_ami_name}"
  source_instance_id      = "${var.instance_id[count.index]}"
  snapshot_without_reboot = "${var.snapshot_without_reboot }"
}

provider "aws" {
  region = "${var.region}"
}

output "ami_id" {
  value = "${aws_ami_from_instance.ami_creation.*.id}"
}
