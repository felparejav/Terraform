output "private_subnet_id_1a" {
  value = "${aws_subnet.Andres_Pareja_Private_Subnet_1a.id}"
}

output "public_subnet_id_1a" {
  value = "${aws_subnet.Andres_Pareja_Public_Subnet_1a.id}"
}

output "public_subnet_id_1b" {
  value = "${aws_subnet.Andres_Pareja_Public_Subnet_1b.id}"
}

output "public_subnet" {
  value = ["${aws_subnet.Andres_Pareja_Public_Subnet_1a.id}", "${aws_subnet.Andres_Pareja_Public_Subnet_1b.id}"]
}

output "private_subnet" {
  value = ["${aws_subnet.Andres_Pareja_Private_Subnet_1a.id}"]
}
