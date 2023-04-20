# DevOps-Infra

## Description

An infrastructure repository for the provision and deployment of the required DevOps needs.

## Prerequisites

1. AWS: a working station with AWS Control Line Interface pre-installed.

## Usage

## Amazon Web Services

1. Create a S3 bucket instance:

   ```bash
   aws s3api create-bucket \
       --bucket "< S3 bucket's name. >" \
       --region "< Amazon Web Services region. >" \
       --create-bucket-configuration LocationConstraint="< Amazon Web Services region. >"
   ```

## Terraform

1. Edit the terraform/version.tf file to point to your newly created bucket:

   ```tf
   terraform {
      required_version = ">=v1.4.5"
      backend "s3" {
          bucket = "< S3 bucket's name. >"
          key    = "workflows/terraform/counter-service/terraform.tfstate"
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
   ```

2. Initialize the Terraform working directory:

   ```bash
   AWS_DEFAULT_REGION=< Amazon Web Services region. > make terraform/init
   ```

3. Validate the Terraform configuration:

   ```bash
   AWS_DEFAULT_REGION=< Amazon Web Services region. > make terraform/validate
   ```

4. Plan the Terraform infrastructure:

   ```bash
   AWS_DEFAULT_REGION=< Amazon Web Services region. > make terraform/plan
   ```

5. Apply the Terraform configuration:

   ```bash
   AWS_DEFAULT_REGION=< Amazon Web Services region. > make terraform/apply
   ```

6. Destroy the Terraform infrastructure:

   ```bash
   AWS_DEFAULT_REGION=< Amazon Web Services region. > make terraform/destroy
   ```
