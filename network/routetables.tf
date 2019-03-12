resource "aws_route_table" "APareja_Public_RouteTable" {
  vpc_id = "${aws_vpc.APareja.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.APareja_IG.id}"
  }

  tags {
    Name         = "APareja_Public_RouteTable"
    create_by    = "Andres_Pareja"
    project_name = "RampUP_Andres_Pareja"
    start        = "start"
    stop         = "stop"
  }
}
resource "aws_route_table_association" "test1" {
  subnet_id      = "${aws_subnet.Andres_Pareja_Public_Subnet_1a.id}"
  route_table_id = "${aws_route_table.APareja_Public_RouteTable.id}"
}
resource "aws_route_table_association" "test3" {
  subnet_id      = "${aws_subnet.Andres_Pareja_Public_Subnet_1b.id}"
  route_table_id = "${aws_route_table.APareja_Public_RouteTable.id}"
}

resource "aws_route_table" "APareja_Private_RouteTable" {
  vpc_id = "${aws_vpc.APareja.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.APareja_IG.id}"
  }

  tags {
    Name         = "APareja_Private_RouteTable"
    create_by    = "Andres_Pareja"
    project_name = "RampUP_Andres_Pareja"
    start        = "start"
    stop         = "stop"
  }
}
resource "aws_route_table_association" "test2" {
  subnet_id      = "${aws_subnet.Andres_Pareja_Private_Subnet_1a.id}"
  route_table_id = "${aws_route_table.APareja_Private_RouteTable.id}"  
}
