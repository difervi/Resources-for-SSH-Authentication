output "ssh_connector" {
  value       = aws_instance.ec2.public_ip
  description = "to be able to connect via SSH "
}