
terraform {
  required_version = ">=0.12"
}

#Create Subnet
#Public-Subnet
resource "aws_subnet" "mumpubsub" {
  vpc_id     = "vpc-0352184c9fc3bdcab"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "mumpubsub"
  }
}
#Private-Subnet
resource "aws_subnet" "mumprisub" {
  vpc_id     = "vpc-0352184c9fc3bdcab"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "mumprisub"
  }
}
