
module "vpc" {
  source  = "app.terraform.io/tf-learn-vihar/vpc/aws"
  version = "2.21.0"
}


resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
    Billing = "true"
    Department = "devops"
  }
}