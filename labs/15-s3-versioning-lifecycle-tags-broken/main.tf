variable "prefix" {
  description = "Prefix applied to bucket names."
  type        = string
  default     = "tfpro-s3"
}

variable "buckets" {
  description = "Bucket configuration keyed by logical bucket name."
  type = map(object({
    versioning     = bool
    lifecycle_days = optional(number)
    tags           = optional(map(string), {})
  }))

  default = {
    logs = {
      versioning     = true
      lifecycle_days = 30
      tags = {
        purpose = "logs"
      }
    }
    assets = {
      versioning = false
      tags = {
        purpose = "assets"
      }
    }
    archive = {
      versioning     = true
      lifecycle_days = 90
      tags = {
        purpose = "archive"
      }
    }
  }
}

locals {
  base_tags = {
    managed_by = "terraform"
    lab        = "s3"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "this" {
  for_each = var.buckets

  bucket = format("%s-%s", var.prefix, each.key)
  tags   = merge(local.base_tags, each.value.tags)
}

output "bucket_names" {
  value = {
    for name, bucket in aws_s3_bucket.this : name => bucket.bucket
  }
}

locals {
  versioned_buckets = {
    for name, cfg in var.buckets : name => cfg
    if cfg.versioning
  }
}

resource "aws_s3_bucket_versioning" "this" {
  for_each = local.versioned_buckets

  bucket = aws_s3_bucket.this[each.key].id

  versioning_configuration {
    status = "Enabled"
  }
}

output "versioned_buckets" {
  value = {
    for name, cfg in local.versioned_buckets : name => aws_s3_bucket.this[name].bucket
  }
}

locals {
  lifecycle_buckets = {
    for name, cfg in var.buckets : name => cfg
    if try(cfg.lifecycle_days, null) != null
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  for_each = local.lifecycle_buckets

  bucket = aws_s3_bucket.this[each.key].id

  rule {
    id     = format("expire-after-%s-days", each.value.lifecycle_days)
    status = "Enabled"

    filter {
      prefix = ""
    }

    expiration {
      days = each.value.lifecycle_days
    }
  }
}
