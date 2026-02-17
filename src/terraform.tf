terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.32.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
}

provider "aws" {
  assume_role {
    role_arn = var.deployment_role
  }
}

provider "aws" {
  alias  = "identity_center"
  region = var.identity_center_region

  assume_role {
    role_arn = var.deployment_role
  }
}
