
module "dl-tf-gke-cluster-namespace-services" {
  source   = "../../../modules/gcp/gke/namespace"

  name = "services"
  zone = local.cluster_location
  cluster_name = module.dl-tf-gke-cluster.cluster_name
}

module "dl-tf-gke-cluster-namespace-monitoring" {
  source   = "../../../modules/gcp/gke/namespace"

  name = "monitoring"
  zone = local.cluster_location
  cluster_name = module.dl-tf-gke-cluster.cluster_name
}