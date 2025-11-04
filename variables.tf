variable "aws_region" {
  description = "AWS region to launch the instance"
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-055e4d03ab1de5def" # Example This is our free ami in ap-south-1
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
