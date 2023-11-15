module "dl-tf-subnets" {
  source = "../../../modules/gcp/subnet"

  name          = "dl-tf-subnet"
  region        = local.region
  ip_cidr_range = local.subnet_cidr_range
  vpc_id        = module.dl-tf-vpc.vpc_id

  # Secondary IP Ranges
  pod_ip_range_name = local.pod_ip_range_name
  pod_ip_range_cidr = local.pod_ip_range_cidr

  service_ip_range_name = local.service_ip_range_name
  service_ip_range_cidr = local.service_ip_range_cidr
}