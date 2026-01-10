terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "nautilus-terraform-states"
    key            = "prod/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "nautilus-terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  default_tags {
    tags = {
      Project     = "nautilus"
      Environment = "prod"
      Owner       = "kke"
    }
  }
}