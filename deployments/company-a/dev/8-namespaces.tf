
module "dl-tf-gke-cluster-namespaces" {
  source   = "../../../modules/gcp/gke/namespace"
  for_each = toset(local.namespaces)

  name = each.value
}