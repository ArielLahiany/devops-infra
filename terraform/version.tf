terraform {
  required_version = ">=v1.4.5"
  backend "s3" {
    bucket = "ariellahiany-counter-service"
    key    = "workflows/terraform/counter-service/terraform.tfstate"
    region = "eu-west-1"
  }
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
