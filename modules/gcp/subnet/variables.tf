
# Subnet Name
variable "name" {
  type = string
}

# Subnet Region
variable "region" {
  type = string
}

# Subnet CIDR Range
variable "ip_cidr_range" {
  type = string
}

# Subnet VPC ID
variable "vpc_id" {
  type = string
}

# Subnet Private IP Google Access
variable "private_ip_google_access" {
  type = bool
  default = true
}

# Subnet POD IP Range Name
variable "pod_ip_range_name" {
  type = string
}

# Subnet POD IP Range CIDR
variable "pod_ip_range_cidr" {
  type = string
}

# Subnet Service IP Range Name
variable "service_ip_range_name" {
  type = string
}

# Subnet Service IP Range CIDR
variable "service_ip_range_cidr" {
  type = string
}