variable "aws_region" {
  description = "Default region to use"
  default     = "us-east-1"
}

variable "access_key" {
    description = "AWS access key"
    type = string
}

variable "secret_key" {
    description = "AWS access secret key"
    type = string
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "ami_image"{
  description = "AMI default"
  default     = "ami-00eb20669e0990cb4"
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default = "MyFavoriteKey"
}

