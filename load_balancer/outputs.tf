output "load_balancer" {
  value = ["${aws_lb_target_group.Andres_Pareja_LB_Target_Group.arn}"]
}

output "load_balancer_i" {
  value = ["${aws_lb_target_group.Andres_Pareja_LB_Target_Group_i.arn}"]
}
