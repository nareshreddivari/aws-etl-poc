terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1" # or your preferred AWS region
}

module "lambda" {
  source = "./modules/lambda"
  name   = "etl-lambda"
}

module "glue" {
  source = "./modules/glue"
  name   = "etl-glue-job"
}

module "eventbridge" {
  source     = "./modules/eventbridge"
  lambda_arn = module.lambda.arn
}
