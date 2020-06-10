provider "aws" {
  region = "us-west-1"
}
  
resource "aws_ecs_cluster" "hpd_fargate" {
  name = "hpd_fargate"
}


