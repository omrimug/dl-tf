terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "helm" {
  # Several Kubernetes authentication methods are possible: https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs#authentication
  kubernetes {
    config_path = pathexpand(var.kube_config)
  }
}

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}