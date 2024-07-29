terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "mpn-statefiles"
    key            = "90-days-project/dev/terraform.tfstate" # The name of the terraform state file in S3 bucket
    dynamodb_table = "mpn-state-lock"
    encrypt        = true
    region         = "us-east-1"
  }
}