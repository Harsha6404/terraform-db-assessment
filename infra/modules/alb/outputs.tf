output "target_group_arn" {

  value = aws_lb_target_group.ecs.arn

}

output "dns_name" {

  value = aws_lb.alb.dns_name

}
