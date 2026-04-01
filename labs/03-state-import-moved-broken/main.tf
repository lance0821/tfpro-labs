provider "aws" {
  region = "us-east-1"
}

variable "bucket_name" {
  description = "Name of an already-existing S3 bucket that you want Terraform to manage."
  type        = string
  default     = "REPLACE-ME-WITH-AN-EXISTING-BUCKET-NAME"
}

resource "aws_s3_bucket" "logs" {
  bucket = var.bucket_name
}

output "bucket_name" {
  value = aws_s3_bucket.logs.bucket
}
