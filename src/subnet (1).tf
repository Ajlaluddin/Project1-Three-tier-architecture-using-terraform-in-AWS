#creating 1st web subnet
resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.mmyvpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "pub-sub-1"
  }
}

#creating 2nd web subnet
resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.mmyvpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    Name = "pub-sub-2"
  }
}
#creating 3rd web subnet
resource "aws_subnet" "pvt-sub-1" {
  vpc_id                  = aws_vpc.mmyvpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1a"
  tags = {
    Name = "pvt-sub-1"
  }
}
#creating 4th web subnet
resource "aws_subnet" "pvt-sub-2" {
  vpc_id                  = aws_vpc.mmyvpc.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-1b"
  tags = {
    Name = "pvt-sub-2"
  }
}

