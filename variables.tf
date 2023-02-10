variable "public_subnet_cidrs" {

  type        = list(string)
  description = "Public Subnet CIDR Ranges"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24","10.0.4.0/24"]
}


variable "private_subnet_cidrs" {

type = list(string)
description = "Private Subnet CIDR Ranges"
default = ["10.0.5.0/24", "10.0.6.0/24", "10.0.7.0/24","10.0.8.0/24"]
}

variable "azs" {

type = list(string)
description = "Availablity Zones"
default = ["us-east-1a","us-east-1b","us-east-1c","us-east-1d"]
}