resource "aws_launch_configuration" "APareja_LC_Front" {
  name     = "APareja_LC_Front"
  image_id        = "${var.amis}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.APareja_Security_Group_Front.id}"]
  key_name        = "${var.key}"

  user_data = "${file("./autoscalinggroups/config.sh")}"
}
resource "aws_autoscaling_group" "APareja_Front_ASG" {
  name                 = "APareja_Front_ASG"
  launch_configuration = "${aws_launch_configuration.APareja_LC_Front.name}"
  min_size             = 6
  max_size             = 12
  vpc_zone_identifier  = ["${var.public_subnet}"]
  target_group_arns    = ["${var.load_balancer}"]

  tags = [
    {
      key                 = "Name"
      value               = "Andres_pareja_Front"
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
