variable "vpc_id" {}

variable "vpc_endpoint_service" {}

variable "route_table_ids" {
  type = "list"
}

variable "vpc_endpoint_type" {
  default = "Gateway"
}
