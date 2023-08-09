resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.mmyvpc.id
  tags = {
    Name = "myigw"
  }
}
