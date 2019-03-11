variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "ports" {
  default = ["80", "3030"]
}

variable "public_subnet" {
  type = "list"
}

variable "security_group" {}
variable "vpc_id" {}
