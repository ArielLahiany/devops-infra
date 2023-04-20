terraform {
  required_version = ">=v1.4.5"
#  backend "s3" {
#    bucket = var.s3_bucket
#    key    = ""
#    region = var.aws_region
#  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.63.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.5.1"
    }
  }
}
