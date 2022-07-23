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

# ========== EC2 ========== #
# module "ec2" {
#   source = "../modules/ec2"
# }


