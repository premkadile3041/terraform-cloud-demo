provider "aws" {
  region = "us-west-1"
}
  resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "tf-cloud"
   
  }
}

resource "aws_subnet" "pub" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

}

resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.pub.id

}


