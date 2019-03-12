resource "aws_subnet" "Andres_Pareja_Public_Subnet_1a" {
  vpc_id            = "${aws_vpc.APareja.id}"
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
  vpc_id            = "${aws_vpc.APareja.id}"
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

resource "aws_subnet" "Andres_Pareja_Private_Front_1a" {
  vpc_id            = "${aws_vpc.APareja.id}"
  cidr_block        = "${var.private_subnet_front_1a_cidr}"
  availability_zone = "${element(var.availability_zones, 0)}"

  tags {
    Name         = "Andres_Pareja_Private_Front_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_subnet" "Andres_Pareja_Private_Front_1b" {
  vpc_id            = "${aws_vpc.APareja.id}"
  cidr_block        = "${var.private_subnet_front_1b_cidr}"
  availability_zone = "${element(var.availability_zones, 0)}"

  tags {
    Name         = "Andres_Pareja_Private_Front_1b"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_subnet" "Andres_Pareja_Public_Jenkins_1a" {
  vpc_id            = "${aws_vpc.APareja.id}"
  cidr_block        = "${var.public_subnet_jenkins_1a_cidr}"
  availability_zone = "${element(var.availability_zones, 0)}"

  tags {
    Name         = "Andres_Pareja_Public_Jenkins_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_subnet" "Andres_Pareja_Private_Back_1a" {
  vpc_id            = "${aws_vpc.APareja.id}"
  cidr_block        = "${var.private_subnet_back_1a_cidr}"
  availability_zone = "${element(var.availability_zones, 0)}"

  tags {
    Name         = "Andres_Pareja_Private_Back_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}
