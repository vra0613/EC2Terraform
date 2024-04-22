variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-09b90e09742640522"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = "subnet-0ede31c33f4da1c67"
}

