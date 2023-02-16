terraform {
  backend "s3" {
    bucket         = "infra-tf-live-state"
    key            = "ecs_cluster/state.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "infra-tf-live-lock"
    profile        = "CHANGEME"
  }
  required_version = "~> 1.3.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.54.0"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
  default_tags {
    tags = var.default_tags
  }
}