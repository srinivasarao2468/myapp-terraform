resource "aws_ami_from_instance" "ami_creation" {
  count                   = "${length(var.instance_ids)}"
  name                    = "${var.creating_ami_name}"
  source_instance_id      = "${var.instance_ids[count.index]}"
  snapshot_without_reboot = "${var.snapshot_without_reboot }"
}

provider "aws" {
  region = "${var.region}"
}

output "ami_ids" {
  value = "${aws_ami_from_instance.ami_creation.*.id}"
}
