
terraform {
  required_version = ">=0.12"
}


#Create Public Ec2
resource "aws_instance" "mumpubsvr" {
  ami           = "ami-090e0fc566929d98b"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-07d0e9dbdf74180e3"]
  subnet_id = "subnet-083ef23a9b5748b00"
  key_name = "sivakey"
  associate_public_ip_address = true

  tags = {
    Name = "mumpubsvr"
  }
}

#Create Private Ec2
resource "aws_instance" "mumprisvr" {
  ami           = "ami-090e0fc566929d98b"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-05720eba711e8567c"]
  subnet_id = "subnet-0f3bde1e1f07530d0"
  key_name = "sivakey"

  tags = {
    Name = "mumprisvr"
  }
}
