# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

# ========== EC2 ========== #
module "ec2" {
  source = "../modules/ec2"
}


