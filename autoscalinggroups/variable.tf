variable "amis" {
  default = "ami-02da3a138888ced85"
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

variable "load_balancer_i" {
  type = "list"
}

variable "key" {
  default = "APareja"
}

variable "vpc_id" {}
