provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "basic" {
  ami           = "ami-0735e22e032b35e38"
  instance_type = "t3.nano"
  tags = {
    Name = "tf-cloud"
   
  }

}
