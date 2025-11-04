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

# Create key pair from your public key
resource "aws_key_pair" "jenkins_key" {
  key_name   = "Ec2_key"
  public_key = file("E:/jenkins/Keys/Ec2.Key.pub")  # path to your .pub key
}

# EC2 Instance
module "ec2_instance" {
  source        = "terraform-aws-modules/ec2-instance/aws"
  name          = "naveen-git-instance"
  ami           = "ami-055e4d03ab1de5def"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.jenkins_key.key_name
  subnet_id     = "subnet-02bf49878ba2ee6c0"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "aws_region" {
  default = "eu-north-1"
}
