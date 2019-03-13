resource "aws_lb" "Andres_Pareja_LB_I" {
  name               = "AParejaELBI"
  internal = true
  load_balancer_type = "network"
  subnets            = ["${var.public_subnet_lb_i}"]

  tags {
    Name         = "Andres_Pareja_LB"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_lb_target_group" "Andres_Pareja_LB_Target_Group_i" {
  name     = "AParejaTGi"
  port     = "3000"
  protocol = "HTTP"
  vpc_id   = "${var.vpc_id}"
}

resource "aws_lb_listener" "Andres_Pareja_LB_listener_i" {
  load_balancer_arn = "${aws_lb.Andres_Pareja_LB.arn}"
  count             = "${length(var.ports_1)}"
  port              = "${element(var.ports_1, count.index)}"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.Andres_Pareja_LB_Target_Group.arn}"
  }
}
