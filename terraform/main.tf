provider "aws" {
  region = var.aws_region
}

resource "aws_cloudwatch_dashboard" "ecs_ddb" {
  dashboard_name = "ecs-ddb-monitoring"
  dashboard_body = file("${path.module}/dashboard.json")
}

variable "aws_region" {
  type    = string
  default = "us-west-2"
}