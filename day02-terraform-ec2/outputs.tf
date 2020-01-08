output "public_ip" {
  value       = aws_instance.ec2-terraform.public_ip
  description = "Public IP address"
}
