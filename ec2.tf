
resource "tls_private_key" "default" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "key_pair" {
  public_key = tls_private_key.default.public_key_openssh
  key_name   = var.key_pair_name
}
resource "local_file" "private_key" {
  filename        = var.private_key_path
  content         = tls_private_key.default.private_key_pem
  file_permission = "0600"
}

resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.key_pair.key_name
  subnet_id                   = data.aws_subnets.subnets.ids[0]
  associate_public_ip_address = true
  tags = {
    Name = "${var.prefix}-instance"
  }

}