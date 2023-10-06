resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc-devopsassessment.id
  cidr_block              = var.public_subnet_1
  availability_zone       = var.availability-zones[0]
  map_public_ip_on_launch = true

  tags = {
    "Name" = local.public-subnet1-name
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc-devopsassessment.id
  cidr_block              = var.public_subnet_2
  availability_zone       = var.availability-zones[1]
  map_public_ip_on_launch = true

  tags = {
    "Name" = local.public-subnet2-name
  }
}

resource "aws_subnet" "private-subnet-1"  {
  vpc_id            = aws_vpc.vpc-devopsassessment.id
  cidr_block        = var.private_subnet_1
  availability_zone = var.availability-zones[0]

  tags = {
    "Name" = local.private-subnet1-name

  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.vpc-devopsassessment.id
  cidr_block        = var.private_subnet_2
  availability_zone = var.availability-zones[1]

  tags = {
    "Name"  = local.priavte-subnet2-name
  }
}

output "private_subnet_id_1" {
  value = aws_subnet.private-subnet-1.id
}

output "private_subnet_id_2" {
  value = aws_subnet.private-subnet-2.id
}