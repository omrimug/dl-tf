
resource "google_service_account" "kubernetes" {
  account_id = var.service_account_id
}


resource "google_container_node_pool" "general" {
  name       = var.name
  cluster    = var.cluster_id
  node_count = var.node_count

  management {
    auto_repair  = var.node_auto_repair
    auto_upgrade = var.node_auto_update
  }

  node_config {
    preemptible  = var.node_preemtible
    machine_type = var.machine_type

    labels = {
      role = var.role_label
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = var.oauth_scopes
  }
}
