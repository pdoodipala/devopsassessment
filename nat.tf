resource "aws_eip" "eip" {
  vpc = true

  tags = {
    Name = local.eip
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = local.nat
  }

  depends_on = [aws_internet_gateway.igw]
}