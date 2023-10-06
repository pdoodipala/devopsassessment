variable "regionName" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "availability-zones" {
  type = list(string)
  default = [ "eu-central-1a", "eu-central-1b" ]
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_1" {
  type = string
}

variable "public_subnet_2" {
  type = string
}

variable "private_subnet_1" {
  type = string
}

variable "private_subnet_2" {
  type = string
}

variable "env" {
  type        = string
  description = "The env for which infrastructure is being provisioned (dev, stage, prod)"
}