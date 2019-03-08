variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.small"
}

# Amazon Linux AMI
# Ubuntu = ami-0ac019f4fcb7cb7e6
variable "amis" {
  default = "ami-0ac019f4fcb7cb7e6"
}

variable "public_subnet_id_1a" {}

variable "key" {
  default = "AndresPareja"
}
