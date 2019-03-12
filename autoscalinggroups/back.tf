resource "aws_launch_configuration" "APareja_LC_Back" {
  name     = "APareja_LC_Back"
  image_id        = "${var.amis}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.APareja_Security_Group_Back.id}"]
  key_name        = "${var.key}"
  user_data = "${file("./autoscalinggroups/config.sh")}"
}

resource "aws_autoscaling_group" "APareja_Back_ASG" {
  name                 = "APareja_Back_ASG"
  launch_configuration = "${aws_launch_configuration.APareja_LC_Back.name}"
  min_size             = 1
  max_size             = 2
  vpc_zone_identifier  = ["${var.private_subnet}"]

  tags = [
    {
      key                 = "Name"
      value               = "Andres_pareja_Back"
      propagate_at_launch = true
    },
    {
      key                 = "stop"
      value               = "stop"
      propagate_at_launch = true
    },
    {
      key                 = "start"
      value               = "start"
      propagate_at_launch = true
    },
  ]
}
