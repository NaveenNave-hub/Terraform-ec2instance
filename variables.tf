variable "aws_region" {
  description = "AWS region to launch the instance"
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-055e4d03ab1de5def"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}
