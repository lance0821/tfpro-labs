provider "aws" {
  region = "us-east-1"
}

variable "create_bucket" {
  description = "Whether to create the bucket."
  type        = bool
  default     = false
}

variable "bucket_name" {
  description = "Name for the optional bucket."
  type        = string
  default     = "REPLACE-ME-WITH-A-UNIQUE-BUCKET-NAME"
}

resource "aws_s3_bucket" "optional" {
  count  = var.create_bucket ? 1 : 0
  bucket = var.bucket_name
}

output "bucket_name" {
  value = aws_s3_bucket.optional[0].bucket
}

output "bucket_arn" {
  value = try(aws_s3_bucket.optional[0].arn, null)
}

output "bucket_id_safe" {
  value = try(one(aws_s3_bucket.optional[*].id), null)
}
