terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = "~> 1.6"
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
  default_tags {
    tags = {
      Owner = "chaitanya-cloud"
      Name  = "chaitanya-cloud"
    }
  }
}