# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

module "ec2" {
  source = "../modules/ec2"

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type
  key_pair      = var.ec2_key_pair
  volume_size   = var.ec2_volume_size
  name          = var.ec2_name
}
