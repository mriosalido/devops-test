resource "aws_ecs_task_definition" "webserver" {
  family = "webserver"

  container_definitions = <<EOF
[
  {
    "name": "webserver",
    "image": "${var.image}",
    "cpu": 10,
    "memory": 512
  }
]
EOF
  tags = {}
}

resource "aws_ecs_service" "forest" {
  name            = "forest"
  cluster         = var.cluster_id
  task_definition = aws_ecs_task_definition.webserver.arn

  desired_count = 2

  deployment_maximum_percent         = 100
  deployment_minimum_healthy_percent = 0
  health_check_grace_period_seconds = 0
  deployment_controller {
    type = "ECS"
  }
  propagate_tags = "NONE"
  tags = {}
  capacity_provider_strategy {
    base              = 20
    capacity_provider = "one"
    weight            = 60
  }
}