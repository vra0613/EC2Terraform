terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.4.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.0"
    }
  }
  backend "s3" {
    bucket = "my-s3-bucket-for-tf-statefile"
    key    = "testing-ec2"
    region = "eu-central-1"
  }

  required_version = ">= 1.4.0"
}

provider "aws" {
  region  = "eu-central-1"
}
