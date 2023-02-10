resource "aws_subnet" "PublicSubnet"{
count = length(var.public_subnet_cidrs)
vpc_id = aws_vpc.myvpc.id
cidr_block = element(var.public_subnet_cidrs, count.index)
availability_zone = element(var.azs, count.index)
tags = {
Name = "Public Subnet ${count.index+1}"
}
}


resource "aws_subnet" "PrivateSubnet" {
count = length(var.private_subnet_cidrs)
vpc_id = aws_vpc.myvpc.id
cidr_block = element(var.private_subnet_cidrs, count.index)
availability_zone = element(var.azs, count.index)

tags = {
Name ="Private Subnet ${count.index+1}"
}



}
