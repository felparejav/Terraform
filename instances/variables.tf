variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

# Amazon Linux AMI
# Ubuntu = ami-0ac019f4fcb7cb7e6
# EC2 = ami-02da3a138888ced85 
variable "amis" {
  default = "ami-02da3a138888ced85"
}

variable "public_jenkins_id_1a" {}

variable "key" {
  default = "APareja"
}

variable "vpc_id" {}
