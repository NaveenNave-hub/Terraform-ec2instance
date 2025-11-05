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
  ami           = "ami-055e4d03ab1de5def"
  instance_type = "t3.micro"

  # ✅ Use existing AWS key pair
  key_name      = "Ec2_key"

  subnet_id     = "subnet-02bf49878ba2ee6c0"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
