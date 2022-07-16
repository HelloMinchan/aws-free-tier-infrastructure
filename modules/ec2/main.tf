module "security_group" {
  source = "../security_group"
}

resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_pair
  vpc_security_group_ids = [module.security_group.id]

  root_block_device {
    volume_size = var.ec2_volume_size
  }

  tags = {
    Name = var.ec2_name
  }
}
