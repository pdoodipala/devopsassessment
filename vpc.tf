resource "aws_vpc" "vpc-devopsassessment" {
  cidr_block = var.vpc_cidr

  enable_dns_hostnames = true

  tags = {
    Name = local.vpcName
    env  = var.env
  }
}

output "vpc_id" {
  value = aws_vpc.vpc-devopsassessment.id
}