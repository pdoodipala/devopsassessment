resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc-devopsassessment.id

  tags = {
    Name = local.igw-name
  }
}