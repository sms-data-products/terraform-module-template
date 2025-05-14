terraform {
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.97.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.4"
    }
  }
}

resource "null_resource" "foo" {
  triggers = {
    example = var.example
  }
}

# Use this data source to lookup information about the current AWS partition in which Terraform is working.
# This will return the identifier of the current partition (e.g., aws in AWS Commercial, aws-us-gov in AWS GovCloud,
# aws-cn in AWS China).
# https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
data "aws_partition" "current" {}
