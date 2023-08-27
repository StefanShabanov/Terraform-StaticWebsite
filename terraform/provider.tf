# Open Terraform website and copy the code for AWS Provider.
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.14.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-central-1"
}