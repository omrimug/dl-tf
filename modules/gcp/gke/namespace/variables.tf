
variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "name" {
  type = string
}

variable "zone"{
  type = string
}

variable "cluster_name"{
  type = string
}
