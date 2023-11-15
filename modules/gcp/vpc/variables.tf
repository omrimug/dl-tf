
# VPC Name
variable "vpc_name" {
  type = string
}

# VPC Routing Mode
variable "vpc_routing_mode" {
  type = string
  default = "REGIONAL"
}

# VPC Auto-Create-Subnetworks
variable "vpc_auto_create_subnetworks" {
  type = bool
  default = false
}

# VPC MTU
variable "vpc_mtu" {
  type = number
  default = 1460
}

# VPC Delete-Default-Routs-On-Create
variable "vpc_delete_default_routes_on_create" {
  type = bool
  default = false
}