output "public_jenkins_id_1a" {
  value = "${aws_subnet.Andres_Pareja_Public_Jenkins_1a.id}"
}

output "public_subnet_lb" {
  value = ["${aws_subnet.Andres_Pareja_Public_Subnet_1a.id}", "${aws_subnet.Andres_Pareja_Public_Subnet_1b.id}"]
}

output "public_subnet_lb_i" {
  value = ["${aws_subnet.Andres_Pareja_Private_Back_1a.id}"]
}

output "public_subnet" {
  value = ["${aws_subnet.Andres_Pareja_Private_Front_1a.id}", "${aws_subnet.Andres_Pareja_Private_Front_1b.id}"]
}

output "private_subnet" {
  value = ["${aws_subnet.Andres_Pareja_Private_Back_1a.id}"]
}

output "vpc_id" {
  value = "${aws_vpc.APareja.id}"
}

output "subnets" {
  value = ["${aws_subnet.Andres_Pareja_Public_Jenkins_1a.id}", "${aws_subnet.Andres_Pareja_Private_Front_1a.id}", "${aws_subnet.Andres_Pareja_Private_Front_1b.id}", "${aws_subnet.Andres_Pareja_Private_Back_1a.id}", "${aws_subnet.Andres_Pareja_Public_Subnet_1a.id}", "${aws_subnet.Andres_Pareja_Public_Subnet_1b.id}"]
}
