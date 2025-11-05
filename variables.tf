variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-05f072e8f02368216" # Change if needed
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch EC2 instance"
  type        = string
  default     = "subnet-02bf49878ba2ee6c0"
}
