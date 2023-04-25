resource "aws_s3_bucket" "site_walmir_dev_s3_bucket" {
  bucket = local.s3_bucket_name

  tags = {
    Name = local.s3_bucket_name
    Environment = "production"
  }
}

resource "aws_s3_bucket_acl" "site_walmir_dev_s3_bucket_acl" {
  bucket = aws_s3_bucket.site_walmir_dev_s3_bucket.id
  acl    = "private"
}
