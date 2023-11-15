module "dl-tf-firewall" {
  source = "../../../modules/gcp/firewall"

  name           = "allow-ssh"
  vpc_name       = module.dl-tf-vpc.vpc_name
  allow_protocol = "tcp"

}