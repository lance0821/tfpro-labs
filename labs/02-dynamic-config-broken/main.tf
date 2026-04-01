
provider "aws" {
  region = "us-east-1"
}

variable "prefix" {
  description = "Prefix applied to bucket names."
  type        = string
  default     = "tfpro-dynamic"
}

variable "buckets" {
  description = "Bucket configuration. This shape works, but it is not ideal for stable resource addressing."
  type = list(object({
    name           = string
    versioning     = bool
    lifecycle_days = optional(number)
    tags           = optional(map(string), {})
  }))

  default = [
    {
      name           = "logs"
      versioning     = true
      lifecycle_days = 30
      tags = {
        purpose = "logs"
      }
    },
    {
      name       = "assets"
      versioning = false
      tags = {
        purpose = "assets"
      }
    },
    {
      name           = "archive"
      versioning     = true
      lifecycle_days = 90
      tags = {
        purpose = "archive"
      }
    }
  ]
}

locals {
  base_tags = {
    managed_by = "terraform"
    lab        = "dynamic-config"
  }
}

resource "aws_s3_bucket" "this" {
  count = length(var.buckets)

  bucket = "${var.prefix}-${var.buckets[count.index].name}"
  tags   = merge(local.base_tags, var.buckets[count.index].tags)
}

output "bucket_names" {
  value = aws_s3_bucket.this[*].bucket
}
