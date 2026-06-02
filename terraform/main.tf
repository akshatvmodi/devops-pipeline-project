terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "akshat-tf-state-devops"
    key            = "devops-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1"
}