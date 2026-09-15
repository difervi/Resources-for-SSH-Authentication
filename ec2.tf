data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}
data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.existing.id]
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = ["true"]
  }
}

data "aws_security_group" "existing" {
  vpc_id = data.aws_vpc.existing.id

  filter {
    name   = "group-name"
    values = [var.security_group_name]
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "cmtr_uad9vkoz_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.cmtr_uad9vkoz_keypair.key_name
  subnet_id                   = data.aws_subnets.public.ids[0]
  vpc_security_group_ids      = [data.aws_security_group.existing.id]
  associate_public_ip_address = true

  tags = {
    Name    = var.instance_name
    Project = var.project_tag
    ID      = var.id_tag
  }
}