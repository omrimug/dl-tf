
module "dl-tf-gke-cluster-nginx" {
  source   = "../../../modules/services/nginx"

  namespace = "services"
}