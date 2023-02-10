resource "aws_route_table" "myrt" {
vpc_id = aws_vpc.myvpc.id

route {
cidr_block = "0.0.0.0/0"
gateway_id = aws_internet_gateway.myigw.id
}

tags = {
Name = "MY Route Table"
}

}



resource "aws_route_table_association" "myassoc"{ 
count = length(var.public_subnet_cidrs)
subnet_id = element(aws_subnet.PublicSubnet[*].id, count.index)
route_table_id = aws_route_table.myrt.id

}
