locals {
  vpcName = "vpc-devopsassessment-${var.env}"
}

locals {
  public-subnet1-name = "public-subnet1-devopsassessment-${var.env}"
}

locals {
  public-subnet2-name = "public-subnet2-devopsassessment-${var.env}"
}

locals {
  private-subnet1-name = "private-subnet1-devopsassessment-${var.env}"
}

locals {
  priavte-subnet2-name = "private-subnet2-devopsassessment-${var.env}"
}

locals {
  igw-name = "iGW-devopsassessment-${var.env}"
}

locals {
  public-routetable = "public-routetable-devopsassessment-${var.env}"
}

locals {
  private-routetable = "private-routetable-devopsassessment-${var.env}"
}

locals {
  eip = "eip-devopsassessment-${var.env}"
}

locals {
  nat = "nat-devopsassessment-${var.env}"
}