
terraform {
  required_version = ">=0.12"
}

resource "aws_vpc" "mumvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mumvpc"
  }
}
