provider "aws" {
  region = "us-east-1"
}

locals {
  apps_raw    = jsondecode(file(format("%s/apps.json", path.module)))
  buckets_raw = csvdecode(file(format("%s/buckets.csv", path.module)))
}

resource "aws_s3_bucket" "this" {
  for_each = {
    for idx, app in local.apps_raw : idx => app
    if app.enabled
  }

  bucket = format("tfpro-%s", each.value.name)

  tags = {
    team = each.value.team
  }
}

output "bucket_names" {
  value = {
    for k, bucket in aws_s3_bucket.this : k => bucket.bucket
  }
}

output "csv_rows" {
  value = local.buckets_raw
}
