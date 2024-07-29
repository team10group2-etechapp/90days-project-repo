variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI"
  type        = string
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
}

variable "keypair_name" {
  description = "keypair"
  type        = string
}