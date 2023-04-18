locals {
  application_name = "site-walmir-dev"

  aws_region  = "us-east-1"
  aws_profile = local.application_name

  s3_bucket_name = local.application_name

  aws_instance_ami  = "ami-007855ac798b5175e"
  aws_instance_type = "t2.micro"
}
