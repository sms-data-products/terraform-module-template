terraform {
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.97.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "sample" {
  source = "../../"

  example = var.example
}
