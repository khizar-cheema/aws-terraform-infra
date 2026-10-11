module "vpc" {
  source   = "../../modules/vpc"
  name     = "dev"
  vpc_cidr = "10.0.0.0/16"

  public_subnets = {
    "eu-north-1a" = "10.0.1.0/24"
    "eu-north-1b" = "10.0.2.0/24"
  }
  private_subnets = {
    "eu-north-1a" = "10.0.11.0/24"
    "eu-north-1b" = "10.0.12.0/24"

  }
}

module "security_groups" {
  source = "../../modules/security-groups"
  name   = "dev"
  vpc_id = module.vpc.vpc_id
}
