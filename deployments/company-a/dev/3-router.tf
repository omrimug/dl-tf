module "dl-tf-router" {
  source = "../../../modules/gcp/router"

  name    = "dl-tf-router"
  region  = local.region
  network = module.dl-tf-vpc.vpc_id
}