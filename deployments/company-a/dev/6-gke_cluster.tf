module "dl-tf-gke-cluster" {
  source = "../../../modules/gcp/gke/cluster"

  name                          = "dl-tf-gke-cluster"
  location                      = local.cluster_location
  network_link                  = module.dl-tf-vpc.vpc_link
  subnetwork_link               = module.dl-tf-subnets.subnetwork_link
  workload_identity_config      = "dl-tf-405208.svc.id.goog"
  cluster_secondary_range_name  = "k8s-pod-range"
  services_secondary_range_name = "k8s-service-range"
  master_ipv4_cidr_block        = "172.16.0.0/28"
  initial_node_count            = 1

}