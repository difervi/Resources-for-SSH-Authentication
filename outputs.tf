output "ssh_connector" {
  value       = aws_instance.cmtr_uad9vkoz_ec2.public_ip
  description = "Public IP address to connect via SSH"
}

output "instance_id" {
  value       = aws_instance.cmtr_uad9vkoz_ec2.id
  description = "ID of the created EC2 instance"
}