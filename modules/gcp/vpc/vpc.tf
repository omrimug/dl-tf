
resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
}

resource "google_project_service" "container" {
  service = "container.googleapis.com"
}

resource "google_compute_network" "main" {
  name                            = var.vpc_name
  routing_mode                    = var.vpc_routing_mode
  auto_create_subnetworks         = var.vpc_auto_create_subnetworks
  mtu                             = var.vpc_mtu
  delete_default_routes_on_create = var.vpc_delete_default_routes_on_create

  depends_on = [
    google_project_service.compute,
    google_project_service.container
  ]
}

output "vpc_id" {
  value = google_compute_network.main.id
}

output "vpc_name" {
  value = google_compute_network.main.name
}

output "vpc_link" {
  value = google_compute_network.main.self_link
}

output "compute_obj" {
  value = google_project_service.compute
}

