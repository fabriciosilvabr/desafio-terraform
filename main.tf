terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
}

module "ec2" {
  source  = "./module-ec2"
  ami     = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  name    = "my-ec2-instance"
}

module "ecr" {
  source = "./module-ecr"
  name   = "my-ecr-repository"
}