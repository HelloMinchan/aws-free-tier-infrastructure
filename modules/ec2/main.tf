resource "aws_instance" "terraform-ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_pair

  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name = var.name
  }
}
