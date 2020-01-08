provider "aws"{
    region = var.aws_region" # will be defined in variables.tf
    
}

### Security Group
resource "aws_security_group" "access-extern" {
  name = "ssh-access"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "ssh"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


# EC2
resource "aws_instance" "ec2-terraform"{
    ami = var.ami_image  # will be defined in variables.tf
    key_name = var.key_name  # will be defined in variables.tf
    instance_type = var.instance_type  # will be defined in variables.tf
    vpc_security_group_ids = [aws_security_group.access-extern.id]
    associate_public_ip_address = "true"
    
    tags = {
        Name = "EC2 instance"
        Creator = "Terraform"
  }
}
