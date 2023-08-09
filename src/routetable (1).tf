resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.mmyvpc.id
  tags = {
    Name = "pub_rt"
  }
}

resource "aws_route" "route" {
  route_table_id         = aws_route_table.pub_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.myigw.id
}
#Associating route table
resource "aws_route_table_association" "route1" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "route2" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.pub_rt.id
}

