data "aws_vpc" "IGonzalez_APareja_VPC" {
  filter {
    name   = "tag:Name"
    values = ["IGonzalez_APareja_VPC"]
  }
}

data "aws_internet_gateway" "APareja_IGonzalez" {
  filter {
    name   = "tag:Name"
    values = ["APareja_IGonzalez"]
  }
}
