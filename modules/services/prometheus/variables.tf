
variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "namespace" {
  type    = string
  default = "monitoring"
}

variable "limits_cpu" {
  type    = string
}

variable "limits_memory" {
  type    = string
}

variable "requests_cpu" {
  type    = string
}

variable "requests_memory" {
  type    = string
}
