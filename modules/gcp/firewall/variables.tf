
# Firewall Name
variable "name" {
  type = string
}

# VPC Name
variable "vpc_name" {
  type = string
}

# Allow Protocol
variable "allow_protocol" {
  type = string
}

# Allow Ports
variable "allow_ports" {
  type = list
  default = ["22"]
}

# Source Ranges
variable "source_ranges" {
  type = list
  default = ["0.0.0.0/0"]
}
