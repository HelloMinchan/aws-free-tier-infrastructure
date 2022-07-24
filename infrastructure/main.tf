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

# ========== Elastic IP ========== #
module "elastic_ip" {
  source = "../modules/elastic_ip"
}

# ========== Internet Gateway ========== #
module "internet_gateway" {
  source = "../modules/internet_gateway"
  vpc_id = module.vpc.id
}

# ========== NAT Gateway ========== #
module "nat_gateway" {
  source                       = "../modules/nat_gateway"
  allocation_nat_gateway_2a_id = module.elastic_ip.elastic_ip_nat_gateway_2a_id
  allocation_nat_gateway_2c_id = module.elastic_ip.elastic_ip_nat_gateway_2c_id
  subnet_public_a_id           = module.subnet.subnet_public_a_id
  subnet_public_c_id           = module.subnet.subnet_public_c_id
}

# ========== Route Table ========== #
module "route_table" {
  source              = "../modules/route_table"
  vpc_id              = module.vpc.id
  internet_gateway_id = module.internet_gateway.id
  nat_gateway_2a_id   = module.nat_gateway.nat_gateway_2a_id
  nat_gateway_2c_id   = module.nat_gateway.nat_gateway_2c_id
  subnet_public_a_id  = module.subnet.subnet_public_a_id
  subnet_public_c_id  = module.subnet.subnet_public_c_id
  subnet_private_a_id = module.subnet.subnet_private_a_id
  subnet_private_c_id = module.subnet.subnet_private_c_id
}

# ========== EC2 ========== #
# module "ec2" {
#   source = "../modules/ec2"
# }


