resource "aws_instance" "ec2_1" {
  ami                         = "ami-022e1a32d3f742bd8"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "mykey"
  vpc_security_group_ids      = [aws_security_group.websg.id]
  subnet_id                   = aws_subnet.pub-sub-1.id
  associate_public_ip_address = true
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "ec2_1"
  }
}

resource "aws_instance" "ec2_2" {
  ami                         = "ami-022e1a32d3f742bd8"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "mykey"
  vpc_security_group_ids      = [aws_security_group.websg.id]
  subnet_id                   = aws_subnet.pub-sub-2.id
  associate_public_ip_address = true
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = "ec2_2"
  }
}

