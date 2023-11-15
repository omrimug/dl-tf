
module "dl-tf-gke-cluster-grafana" {
  source   = "../../../modules/services/grafana"

  namespace = "monitoring"
  prometheus_svc = module.dl-tf-gke-cluster-promethues.prometheus_svc
}