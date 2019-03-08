output "load_balancer" {
  value = ["${aws_lb_target_group.Andres_Pareja_LB_Target_Group.arn}"]
}
