
# Service Account ID
variable "service_account_id" {
  type = string
}

# Name
variable "name" {
  type = string
}

# Cluster ID
variable "cluster_id" {
  type = string
}

# Node Count
variable "node_count" {
  type = number
  default = 0
}

# Node Auto Repair
variable "node_auto_repair" {
  type = bool
  default = true
}

# Node Auto Update
variable "node_auto_update" {
  type = bool
  default = true
}

# Node Preemtible
variable "node_preemtible" {
  type = bool
  default = true
}


# Node Machine Type
variable "machine_type" {
  type = string
}


# Role Label
variable "role_label" {
  type = string
  default = "general"
}

# OAuth Scopes
variable "oauth_scopes" {
  type = list
}
