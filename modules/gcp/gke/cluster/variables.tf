
# Cluster Name
variable "name" {
  type = string
}

# Cluster Location
variable "location" {
  type = string
}

# Cluster Remove Default Node Pool
variable "remove_default_node_pool" {
  type = bool
  default = true
}

# Cluster Initial Node Count
variable "initial_node_count" {
  type = number
  default = 0
}

# Cluster Network
variable "network_link" {
  type = string
  # google_compute_network.main.self_link
}

# Cluster Name
variable "subnetwork_link" {
  type = string
  # google_compute_subnetwork.private.self_link
}

# Cluster Logging Service
variable "logging_service" {
  type = string
  default = "logging.googleapis.com/kubernetes"
}

# Cluster Monitoring Service
variable "monitoring_service" {
  type = string
  default = "monitoring.googleapis.com/kubernetes"
}

# Cluster Networking Service
variable "networking_service" {
  type = string
  default = "VPC_NATIVE"
}

# Cluster HTTP Load Balancing Disabled
variable "http_load_balancing_disabled" {
  type = bool
  default = true
}

# Cluster Horizontal POD Autoscaling Disabled
variable "horizontal_pod_autoscaling" {
  type = bool
  default = false
}

# Cluster Release Channel
variable "release_channel" {
  type = string
  default = "REGULAR"
}


# Cluster Workload Identity Config
variable "workload_identity_config" {
  type = string
}

# Cluster Secondary Range Name
variable "cluster_secondary_range_name" {
  type = string
}

# Cluster Services Secondary Range Name
variable "services_secondary_range_name" {
  type = string
}

# Cluster Enable Private Nodes
variable "enable_private_nodes" {
  type = bool
  default = true
}

# Cluster Enable Private Endpoint
variable "enable_private_endpoint" {
  type = bool
  default = false
}

# Cluster Master IPv4 CIDR Block
variable "master_ipv4_cidr_block" {
  type = string
}
