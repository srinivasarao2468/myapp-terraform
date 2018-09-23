output "instance_ids" {
  value = "${aws_instance.instances.*.id}"
}
