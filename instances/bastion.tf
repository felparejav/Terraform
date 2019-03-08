resource "aws_instance" "Andres_Pareja_Jenkins_1a" {
  ami                         = "${var.amis}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.public_subnet_id_1a}"
  associate_public_ip_address = true
  key_name                    = "${var.key}"

  user_data = "${file("./instances/config.sh")}"
  security_groups = ["${aws_security_group.APareja_security_group_jenkins.id}"]

  tags {
    Name         = "Andres_Pareja_Jenkins_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}
