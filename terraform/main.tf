provider "aws" {}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}


terraform {
  backend "s3" {
    bucket         = "pslijkhuis-terraform-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
