variable "default_tags" {
  type        = map(string)
  description = "Common tag shared between resources"
}

variable "aws_profile" {
  type        = string
  description = "Which aws profile use to deploy"
}

variable "aws_region" {
  type        = string
  description = "Which aws region use to deploy"
}

variable "cluster_id" {
  description = "The ECS cluster ID"
  type        = string
}

variable "image" {
  type = string
}