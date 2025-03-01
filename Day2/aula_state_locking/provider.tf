terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-linuxtips-teixeira-statefiles"
    key    = "aula-locking-state"
    region = "us-east-1"
    #dynamodb_table = "Descomplicando-terraform"

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
