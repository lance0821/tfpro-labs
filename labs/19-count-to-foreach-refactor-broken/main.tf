provider "aws" {
  region = "us-east-1"
}

variable "bucket_configs" {
  description = "Bucket definitions that should eventually be managed with stable keys."
  type = list(object({
    name       = string
    versioning = bool
  }))

  default = [
    {
      name       = "logs"
      versioning = true
    },
    {
      name       = "assets"
      versioning = false
    }
  ]
}

resource "aws_s3_bucket" "this" {
  count = length(var.bucket_configs)

  bucket = format("tfpro-%s", var.bucket_configs[count.index].name)
}

output "bucket_names_by_index" {
  value = {
    for idx, bucket in aws_s3_bucket.this : idx => bucket.bucket
  }
}

output "bucket_configs" {
  value = var.bucket_configs
}
