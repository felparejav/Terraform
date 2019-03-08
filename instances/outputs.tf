output "intance_jenkins_1a" {
  value = "${aws_instance.Andres_Pareja_Jenkins_1a.id}"
}

output "private_ip_jenkins" {
  value = "${aws_instance.Andres_Pareja_Jenkins_1a.private_ip}"
}
