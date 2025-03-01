terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-linuxtips-teixeira-statefiles"
    key    = "aula-import"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.87.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
