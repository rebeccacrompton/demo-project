# Terraform & State
terraform {
  required_version = "~> 1.0"

  backend "s3" {
    bucket = "demo-project-devops-terraform-state"
    key    = "demo-project/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}