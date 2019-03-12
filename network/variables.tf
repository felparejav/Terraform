variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_1a_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "192.168.1.0/24"
}

variable "public_subnet_1b_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "192.168.2.0/24"
}

variable "private_subnet_front_1a_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "192.168.3.0/24"
}

variable "private_subnet_front_1b_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "192.168.4.0/24"
}

variable "public_subnet_jenkins_1a_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "192.168.5.0/24"
}

variable "private_subnet_back_1a_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "192.168.6.0/24"
}
