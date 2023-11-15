
resource "google_compute_router_nat" "nat" {
  name   = var.name
  router = var.router_name
  region = var.region

  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
  nat_ip_allocate_option             = var.nat_ip_allocate_option

  subnetwork {
    name                    = var.subnetwork_id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat.self_link]
}

resource "google_compute_address" "nat" {
  name         = var.name
  address_type = var.address_type
  network_tier = var.network_tier

  # depends_on = var.depends_on
}
