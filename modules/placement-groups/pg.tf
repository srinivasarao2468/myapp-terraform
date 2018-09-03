resource "aws_placement_group" "placement_group" {
  name     = "${var.pg_name}"
  strategy = "${var.pg_strategy}"
}

output "pg_id" {
  value = "${aws_placement_group.placement_group.id}"
}
