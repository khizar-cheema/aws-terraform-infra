terraform {
  backend "s3" {
    bucket       = "khizar-tf-state-554454"
    key          = "aws-project/dev/terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true
  }
}
