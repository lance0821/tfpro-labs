
provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  description = "Compute instance type."
  type        = string
  default     = "t3.micro"
}

locals {
  environment = "dev"
}

locals {
  network_outputs = {
    dev = {
      vpc_id            = "vpc-dev-1234567890abcdef0"
      subnet_id         = "subnet-dev-1234567890abcdef0"
      security_group_id = "sg-dev-1234567890abcdef0"
    }
    prod = {
      vpc_id            = "vpc-prod-1234567890abcdef0"
      subnet_id         = "subnet-prod-1234567890abcdef0"
      security_group_id = "sg-prod-1234567890abcdef0"
    }
  }
}

output "selected_environment" {
  value = local.environment
}

output "network_outputs" {
  value = local.network_outputs[local.environment]
}

output "instance_type" {
  value = var.instance_type
}
