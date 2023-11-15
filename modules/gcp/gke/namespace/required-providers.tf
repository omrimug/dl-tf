terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}