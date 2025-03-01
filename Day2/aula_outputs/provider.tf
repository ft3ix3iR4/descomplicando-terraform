terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-linuxtips-teixeira-statefiles"
    key    = "aula-outputs"
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

provider "aws" {
  alias  = "west"
  region = "us-west-1"
}
