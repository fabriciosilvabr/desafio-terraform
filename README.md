# desafio-terraform

Este repositório contém módulos Terraform básicos para provisionar recursos da AWS:

* **module-ec2:** Cria uma instância EC2.
* **module-ecr:** Cria um repositório ECR.

## Como usar os módulos

**Exemplo de uso:**

```terraform
# main.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Substitua pela sua região
}

module "ec2" {
  source  = "./module-ec2"
  ami     = "ami-0c55b159cbfafe1f0" # Exemplo de AMI
  instance_type = "t2.micro"
  name    = "my-ec2-instance"
}

module "ecr" {
  source = "./module-ecr"
  name   = "my-ecr-repository"
}
