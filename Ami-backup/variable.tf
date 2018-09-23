variable "windows_ami_name" {
  description = "Name of the windows ami"
  default     = "windows_ami"
}

variable "linux_ami_name" {
  description = "Name of linux ami"
  default     = "linux_ami"
}

variable "snapshot_without_reboot" {
  description = "creating snapshot without reaboot?"
  default     = true
}

variable "linux_instance_ids" {
  description = "This is linux instance ids"
  type        = "list"
}

variable "windows_instance_ids" {
  description = "This is windows instance ids"
  type        = "list"
}
