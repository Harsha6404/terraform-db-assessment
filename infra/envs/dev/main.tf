terraform {

  required_version = ">=1.5"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "../../modules/network"
}

module "ecs" {

  source = "../../modules/ecs"

  subnet_id = module.network.private_subnet

  security_group_id = aws_security_group.ecs.id

}

module "rds" {

  source = "../../modules/rds"

  subnet_id = module.network.private_subnet

  security_group_id = aws_security_group.rds.id

}
