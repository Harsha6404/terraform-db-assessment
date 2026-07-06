resource "aws_lb" "alb" {

  name               = "assessment-alb"

  internal           = false

  load_balancer_type = "application"

  security_groups = [
    var.alb_sg
  ]

  subnets = var.public_subnets

}

resource "aws_lb_target_group" "ecs" {

  name = "ecs-target-group"

  port = 80

  protocol = "HTTP"

  target_type = "ip"

  vpc_id = var.vpc_id

  health_check {

    path = "/"

    protocol = "HTTP"

  }

}

resource "aws_lb_listener" "http" {

  load_balancer_arn = aws_lb.alb.arn

  port = 80

  protocol = "HTTP"

  default_action {

    type = "forward"

    target_group_arn = aws_lb_target_group.ecs.arn

  }

}
