provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "Rahulvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "RahulVPC"
  }
}

resource "aws_subnet" "PublicSubnet" {
  vpc_id     = aws_vpc.Rahulvpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSN"
  }
}
  
resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = aws_vpc.Rahulvpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "PrivateSN"
  }
}
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.Rahulvpc.id

  tags = {
    Name = "MyIgw"
  }
}
