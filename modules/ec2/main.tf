module "availability_zone" {
  source = "../availability_zone"
}
module "subnet" {
  source = "../subnet"
}
module "security_group" {
  source = "../security_group"
}

resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.key_pair
  vpc_security_group_ids = [module.security_group.id]
  availability_zone      = module.availability_zone.availability_zone_c
  subnet_id              = module.subnet.subnet_c_id
  # user_data              = file("./init-script.sh")

  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name = var.name
  }
}
