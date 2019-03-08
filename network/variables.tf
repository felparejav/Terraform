variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_1a_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.11.0/24"
}

variable "public_subnet_1b_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.12.0/24"
}

variable "private_subnet_1a_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.13.0/24"
}
