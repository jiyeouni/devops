terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket = "user10-terraform"
    key = "terraform.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "user10-terraform"
    encrypt = "true"
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  exclude_names = ["ap-southeast-1a","ap-southeast-1c"]
}

