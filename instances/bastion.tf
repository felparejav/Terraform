resource "aws_instance" "Andres_Pareja_Jenkins_1a" {
  ami                         = "${var.amis}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.public_jenkins_id_1a}"
  associate_public_ip_address = true
  key_name                    = "${var.key}"
  private_ip                  = "10.0.5.20"

  user_data       = "${file("./config/config_master.sh")}"
  security_groups = ["${aws_security_group.APareja_security_group_jenkins.id}"]

  tags {
    Name         = "Andres_Pareja_Jenkins_1a"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}
