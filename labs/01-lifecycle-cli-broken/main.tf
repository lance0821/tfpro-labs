provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "logs" {
  bucket = "REPLACE-ME-WITH-A-UNIQUE-BUCKET-NAME"
}
