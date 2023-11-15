
module "dl-tf-gke-cluster-node-pull-general" {
  source = "../../../modules/gcp/gke/node_pull"
  
  service_account_id = local.service_account_id
  name = "dl-tf-gke-node-pull-general"
  cluster_id = module.dl-tf-gke-cluster.cluster_id
  node_count = 1
  machine_type = local.machine_type
  oauth_scopes = local.oauth_scopes
}