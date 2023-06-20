
terraform {
  required_version = ">=0.12"
}

#Create IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = "vpc-0352184c9fc3bdcab"

  tags = {
    Name = "igw"
  }
}

#Create Routetable
#Create Public Routetable
resource "aws_route_table" "mumpubrt" {
  vpc_id = "vpc-0352184c9fc3bdcab"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "mumpubrt"
  }
}
