
# Name
variable "name" {
  type = string
}

# Router
variable "router_name" {
  type = string
}

# Subnetwork ID
variable "subnetwork_id" {
  type = string
}

# Region
variable "region" {
  type = string
}

# Source Subnetwork IP Ranges to NAT
variable "source_subnetwork_ip_ranges_to_nat" {
  type = string
  default = "LIST_OF_SUBNETWORKS"
}

# NAT IP Allocation Option
variable "nat_ip_allocate_option" {
  type = string
  default = "MANUAL_ONLY"
}

# Address Type
variable "address_type" {
  type = string
  default = "EXTERNAL"
}

# Network Tier
variable "network_tier" {
  type = string
  default = "PREMIUM"
}
