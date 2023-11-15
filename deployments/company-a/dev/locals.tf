locals {
  # General
  region = "us-central1"

  # Subnet
  subnet_cidr_range = "10.0.0.0/18"

  pod_ip_range_name = "k8s-pod-range"
  pod_ip_range_cidr = "10.48.0.0/14"

  service_ip_range_name = "k8s-service-range"
  service_ip_range_cidr = "10.52.0.0/20"

  # Cluster
  cluster_location = "us-central1-a"

  # Node Pull
  machine_type       = "e2-small"
  service_account_id = "kubernetes"
  oauth_scopes       = ["https://www.googleapis.com/auth/cloud-platform"]
}