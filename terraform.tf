provider "aws" {
  region = "ap-south-1"  # Mumbai region
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "My-Internet-Gateway"
  }
}