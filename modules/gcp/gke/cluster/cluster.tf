
resource "google_container_cluster" "dl-tf-cluster" {
  name                     = var.name #"dl-tf-cluster" #TODO: add env prefix
  location                 = var.location #"us-central1-a"
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
  network                  = var.network_link
  subnetwork               = var.subnetwork_link
  logging_service          = var.logging_service
  monitoring_service       = var.monitoring_service
  networking_mode          = var.networking_service

  addons_config {
    http_load_balancing {
      disabled = var.http_load_balancing_disabled
    }
    horizontal_pod_autoscaling {
      disabled = var.horizontal_pod_autoscaling
    }
  }

  release_channel {
    channel = var.release_channel
  }

  workload_identity_config {
    workload_pool = var.workload_identity_config
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
  }

  private_cluster_config {
    enable_private_nodes    = var.enable_private_nodes
    enable_private_endpoint = var.enable_private_endpoint
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }
}

output "cluster_id" {
  value = google_container_cluster.dl-tf-cluster.id
}

output "cluster_name" {
  value = google_container_cluster.dl-tf-cluster.name
}
