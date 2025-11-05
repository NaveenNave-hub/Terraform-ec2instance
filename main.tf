terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.5.7"
}

provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  name          = "naveen-instance"
  ami           = var.ami_id
  instance_type = var.instance_type

  # Using existing AWS key pair
  key_name      = "Ec2_key"

  subnet_id     = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
