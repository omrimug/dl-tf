module "dl-tf-nat" {
  source = "../../../modules/gcp/nat"

  name = "dl-tf-nat"
  region = local.region
  router_name = module.dl-tf-router.router_name
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork_id = module.dl-tf-subnets.subnetwork_id
  
}