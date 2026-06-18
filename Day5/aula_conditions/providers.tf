terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-linuxtips-teixeira-statefiles"
    key    = "aula-terraform_conditions-statefiles"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}