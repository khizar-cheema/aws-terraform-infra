provider "aws" {
  region = "eu-north-1"

  default_tags {
    tags = {
      Project     = "aws-terraform-infra"
      Environment = "dev"
      ManagedBy   = "terraform"
    }
  }
}
