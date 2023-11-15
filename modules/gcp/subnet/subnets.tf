
resource "google_compute_subnetwork" "private" {
  name                     = var.name
  ip_cidr_range            = var.ip_cidr_range # "10.0.0.0/18"
  region                   = var.region
  network                  = var.vpc_id
  private_ip_google_access = var.private_ip_google_access

  # TODO: Provide a more generic solution for allowing dynamic creation of secondary ip ranges

  secondary_ip_range {
    range_name    = var.pod_ip_range_name
    ip_cidr_range = var.pod_ip_range_cidr
  }
  
  secondary_ip_range {
    range_name    = var.service_ip_range_name
    ip_cidr_range = var.service_ip_range_cidr
  }
}

output "subnetwork_id" {
  value = google_compute_subnetwork.private.id
}

output "subnetwork_link" {
  value = google_compute_subnetwork.private.self_link
}

