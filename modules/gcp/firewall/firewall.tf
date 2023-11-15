
resource "google_compute_firewall" "allow-ssh" {
  name    = var.name
  network = var.vpc_name

  allow {
    protocol = var.allow_protocol
    ports    = var.allow_ports
  }

  source_ranges = var.source_ranges
}
