module "availability_zone" {
  source = "../availability_zone"
}


resource "aws_subnet" "subnet_public_a" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = module.availability_zone.availability_zone_a
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet_public_a"
  }
}

resource "aws_subnet" "subnet_public_c" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = module.availability_zone.availability_zone_c
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet_public_c"
  }
}

resource "aws_subnet" "subnet_private_a" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.3.0/24"
  availability_zone = module.availability_zone.availability_zone_a

  tags = {
    Name = "subnet_private_a"
  }
}

resource "aws_subnet" "subnet_private_c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.4.0/24"
  availability_zone = module.availability_zone.availability_zone_c

  tags = {
    Name = "subnet_private_c"
  }
}
