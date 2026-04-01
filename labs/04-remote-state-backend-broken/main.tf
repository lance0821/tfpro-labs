provider "aws" {
  region = "us-east-1"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

locals {
  network_state_key = "network/${var.environment}.tfstate"
}

terraform {
  backend "s3" {
    bucket = "REPLACE-ME-WITH-A-REAL-BUCKET"
    key    = local.network_state_key
    region = "us-east-1"
  }
}

locals {
  network_outputs = {
    vpc_id            = "vpc-1234567890abcdef0"
    subnet_id         = "subnet-1234567890abcdef0"
    security_group_id = "sg-1234567890abcdef0"
  }
}

output "network_outputs" {
  value = local.network_outputs
}
