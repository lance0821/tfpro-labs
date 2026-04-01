

provider "aws" {
  region = "us-east-1"
}

variable "environment" {
  description = "Environment name used for remote-state key selection."
  type        = string
  default     = "dev"
}

terraform {
  backend "s3" {
    # Intentionally partial. Supply these per-environment at init time using:
    # terraform init -backend-config=backend.hcl
    bucket = ""
    key    = ""
    region = ""
  }
}

locals {
  expected_backend_key = format("network/%s.tfstate", var.environment)
}

output "backend_key_hint" {
  value = local.expected_backend_key
}

output "init_example" {
  value = "terraform init -backend-config=backend.hcl"
}
