resource "aws_subnet" "Andres_Pareja_Public_Subnet_1a" {
  vpc_id            = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"
  cidr_block        = "${var.public_subnet_1a_cidr}"
  availability_zone = "${element(var.availability_zones, 0)}"

  tags {
    Name         = "Andres_Pareja_Public_Subnet_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_subnet" "Andres_Pareja_Public_Subnet_1b" {
  vpc_id            = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"
  cidr_block        = "${var.public_subnet_1b_cidr}"
  availability_zone = "${element(var.availability_zones, 1)}"

  tags {
    Name         = "Andres_Pareja_Public_Subnet_1b"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_subnet" "Andres_Pareja_Private_Subnet_1a" {
  vpc_id            = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"
  cidr_block        = "${var.private_subnet_1a_cidr}"
  availability_zone = "${element(var.availability_zones, 0)}"

  tags {
    Name         = "Andres_Pareja_Private_Subnet_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}
