terraform {
  required_version = "~> 1.14"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
  cloud {
    organization = "devops_terraform_1"
    workspaces {
      name = "devops_terraform1"
    }
  }
}

provider "aws" {
  region = var.region
}

provider "aws" {
  alias = "east"
  region = var.region_2
}
