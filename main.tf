provider "aws" {
    region = "us-east-1"
    access_key = "AKIAWWACO5SDWT3JLVOR"
    secret_key = "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"

}
module "VPC" {
  source = ".\\vpc"
}

module "SUBNET" {
  source = ".\\subnet"
}

module "IGANDROUTE" {
  source = ".\\igandroute"
}

module "SECURITYGROUP" {
  source = ".\\securitygroup"
}

module "EC2INSTANCE" {
  source = ".\\ec2instance"
}




