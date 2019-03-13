output "security_group_front" {
  value = "${aws_security_group.APareja_Security_Group_Front.id}"
}

output "security_group_back" {
  value = "${aws_security_group.APareja_Security_Group_Back.id}"
}
