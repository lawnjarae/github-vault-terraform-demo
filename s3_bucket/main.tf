provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  # Block public access to the bucket and its contents
  #   block_public_acls       = true
  #   block_public_policy     = true
  #   ignore_public_acls      = true
  #   restrict_public_buckets = true
}

resource "aws_s3_bucket_acl" "acl_policy" {
  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
