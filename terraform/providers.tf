terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "pg" {}
}

provider "aws" {
  region  = "us-east-1"
  profile = "site-walmir-dev"
}
