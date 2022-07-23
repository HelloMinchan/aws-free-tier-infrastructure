# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

# ========== VPC ========== #
module "vpc" {
  source = "../modules/vpc"
}

# ========== Subnet ========== #
module "subnet" {
  source = "../modules/subnet"
  vpc_id = module.vpc.id
}

# ========== Internet Gateway ========== #
module "internet_gateway" {
  source = "../modules/internet_gateway"
  vpc_id = module.vpc.id
}

# ========== Route Table ========== #
module "route_table" {
  source             = "../modules/route_table"
  vpc_id             = module.vpc.id
  gateway_id         = module.internet_gateway.id
  subnet_public_a_id = module.subnet.subnet_public_a_id
  subnet_public_c_id = module.subnet.subnet_public_c_id
}

# ========== EC2 ========== #
# module "ec2" {
#   source = "../modules/ec2"
# }


