terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  # Har resource pe ye tags apne aap lag jayenge
  default_tags {
    tags = {
      Project   = "Project-01-tf-first-server"
      ManagedBy = "Terraform"
      Owner     = var.owner
    }
  }
}
