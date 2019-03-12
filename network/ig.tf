resource "aws_internet_gateway" "APareja_IG" {
  vpc_id = "${aws_vpc.APareja.id}"

  tags {
    Name         = "APareja_IG"
    create_by    = "Andres_Pareja"
    project_name = "RampUP_Andres_Pareja"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_eip" "APareja_ElasticIP" {
  vpc = true
}

resource "aws_nat_gateway" "APareja_NAT" {
  allocation_id = "${aws_eip.APareja_ElasticIP.id}"
  subnet_id     = "${aws_subnet.Andres_Pareja_Public_Subnet_1a.id}"

  tags {
    Name         = "APareja_NAT"
    create_by    = "Andres_Pareja"
    project_name = "RampUP_Andres_Pareja"
    start        = "start"
    stop         = "stop"
  }
}
