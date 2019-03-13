resource "aws_lb" "Andres_Pareja_LB" {
  name               = "AParejaELB"
  load_balancer_type = "application"
  security_groups    = ["${var.security_group_front}"]
  subnets            = ["${var.public_subnet_lb}"]

  tags {
    Name         = "Andres_Pareja_LB"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_lb_target_group" "Andres_Pareja_LB_Target_Group" {
  name     = "AParejaTG"
  port     = "3030"
  protocol = "HTTP"
  vpc_id   = "${var.vpc_id}"
}

resource "aws_lb_listener" "Andres_Pareja_LB_listener" {
  load_balancer_arn = "${aws_lb.Andres_Pareja_LB.arn}"
  count             = "${length(var.ports)}"
  port              = "${element(var.ports, count.index)}"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.Andres_Pareja_LB_Target_Group.arn}"
  }
}
