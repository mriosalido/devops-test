##                     ##
##  GENERAL VARIABLES  ##
##                     ##
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

##                 ##
##  VPC VARIABLES  ##
##                 ##

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC cidr"
}

variable "vpc_availability_zones" {
  type        = set(string)
  description = "Set of availability zones where deploy the subnets. Not use or leave [] if you want to use all availability zones savaiable"
  default     = []
}

variable "vpc_private_subnets" {
  type        = set(string)
  description = "Set of CIDR"
}

variable "vpc_public_subnets" {
  type        = set(string)
  description = "Set of CIDR"
}

variable "vpc_enable_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
}

variable "vpc_single_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
}

variable "vpc_enable_dns_hostnames" {
  type        = bool
  description = "	Should be true to enable DNS hostnames in the VPC"
}

variable "vpc_enable_flow_log" {
  type        = bool
  description = "Whether or not to enable VPC Flow Logs"
  default     = false
}

variable "vpc_create_flow_log_cloudwatch_iam_role" {
  type        = bool
  description = "Whether to create IAM role for VPC Flow Logs"
  default     = false
}

variable "vpc_create_flow_log_cloudwatch_log_group" {
  type        = bool
  description = "Whether to create CloudWatch log group for VPC Flow Logs"
  default     = false
}

variable "vpc_flow_log_cloudwatch_log_group_retention_in_days" {
  type        = number
  description = "Specifies the number of days you want to retain log events in the specified log group for VPC flow logs."
}


# ##                 ##
# ##  EKS VARIABLES  ##
# ##                 ##

variable "ecs_name" {
  type        = string
  description = "Cluster Name"
}
