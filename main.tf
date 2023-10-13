# -----------------------------------
# Terraform configuration
# -----------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
    bucket  = "kuro-tfstate-bucket-96"
    key     = "kuro-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}

# -------------------------------
# provider
# -------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}


# -------------------------------
# variables
# -------------------------------

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

