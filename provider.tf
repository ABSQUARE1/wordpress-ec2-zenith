terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
  backend "s3" {
    key            = "wp/terraform.tfstate"
    region         = var.region
    dynamodb_table = var.wp_dynamo
  }
}

provider "aws" {
  region = var.region
}
