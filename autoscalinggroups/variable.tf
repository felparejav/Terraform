variable "amis" {
  default = "ami-0ac019f4fcb7cb7e6"
}

variable "public_subnet" {
  type = "list"
}

variable "private_subnet" {
  type = "list"
}

variable "private_ip_jenkins" {}

variable "load_balancer" {
  type = "list"
}

variable "key" {
  default = "AndresPareja"
}
variable "vpc_id" {}

