terraform {
  required_version = ">= 1.4.0"

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">=0.11.24"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "=5.12.0"
    }
  }
}

provider "volterra" {
  api_p12_file = var.api_p12_file
  url          = var.api_url
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

  default_tags {
    tags = {
      Owner = var.resource_owner
    }
  }
}
