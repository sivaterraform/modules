
terraform {
  required_version = ">=0.12"
}

#Create Security-Group
#Create public Securiy Group
resource "aws_security_group" "mumpubsg" {
  name        = "mumpubsg"
  description = "Allow ALL inbound traffic"
  vpc_id      = "vpc-0352184c9fc3bdcab"

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "mumpubsg"
  }
}
#Create Private Security Group
resource "aws_security_group" "mumprisg" {
  name        = "mumprisg"
  description = "Allow ALL inbound traffic"
  vpc_id      = "vpc-0352184c9fc3bdcab"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "mumprisg"
  }
}
