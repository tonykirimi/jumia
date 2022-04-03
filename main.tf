
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

}



module "jumia-vpc" {
  source = "/home/tizo/jumia/modules/vpc"

}

module "rds" {
  source = "/home/tizo/jumia/modules/RDS"
}