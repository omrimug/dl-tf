
module "dl-tf-gke-cluster-promethues" {
  source   = "../../../modules/services/prometheus"

  namespace = "monitoring"
  limits_cpu = "200m"
  limits_memory = "50Mi"
  requests_cpu = "110m"
  requests_memory = "30Mi"
}