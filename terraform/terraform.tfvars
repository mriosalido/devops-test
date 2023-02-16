default_tags = {
  "managed_by"  = "Terraform"
  "environment" = "production"
  "ref"         = "infra_team"
}

aws_profile = "CHANGEME"
aws_region  = "eu-west-1"

vpc_name                                            = "infra-ecs"
vpc_cidr                                            = "10.62.0.0/16"
vpc_private_subnets                                 = ["10.62.1.0/24", "10.62.2.0/24", "10.62.3.0/24"]
vpc_public_subnets                                  = ["10.62.4.0/24", "10.62.5.0/24", "10.62.6.0/24"]
vpc_enable_nat_gateway                              = true
vpc_single_nat_gateway                              = true
vpc_enable_dns_hostnames                            = true
vpc_enable_flow_log                                 = false
vpc_create_flow_log_cloudwatch_iam_role             = false
vpc_create_flow_log_cloudwatch_log_group            = false
vpc_flow_log_cloudwatch_log_group_retention_in_days = null


ecs_name = "infra-ecs"
