default_tags = {
  "managed_by"  = "Terraform"
  "environment" = "production"
  "ref"         = "infra_team"
}

aws_profile = "CHANGEME"
aws_region  = "eu-west-1"


cluster_id = "infra-ecs"
image = "nginx:1.11.3"