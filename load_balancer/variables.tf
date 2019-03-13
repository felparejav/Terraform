variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "ports" {
  default = ["80", "3030"]
}

variable "ports_1" {
  default = ["80", "3000"]
}

variable "public_subnet_lb" {
  type = "list"
}

variable "public_subnet_lb_i" {
  type = "list"
}

variable "security_group_front" {}
variable "security_group_back" {}
variable "vpc_id" {}
