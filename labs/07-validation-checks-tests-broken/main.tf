provider "aws" {
  region = "us-east-1"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "environment must be one of: dev, stage, prod."
  }
}

variable "instance_type" {
  description = "Requested instance type."
  type        = string
  default     = "t3.micro"
}

variable "name_prefix" {
  description = "Name prefix for generated resources."
  type        = string
  default     = "tfpro"

  validation {
    condition     = length(var.name_prefix) >= 3
    error_message = "name_prefix must be at least 3 characters long."
  }
}

locals {
  deployment_name = format("%s-%s", var.name_prefix, var.environment)
}

resource "terraform_data" "deployment" {
  input = {
    environment   = var.environment
    instance_type = var.instance_type
    name          = local.deployment_name
  }

  lifecycle {
    precondition {
      condition     = !(var.environment == "prod" && var.instance_type == "t3.micro")
      error_message = "prod must not use t3.micro."
    }
  }
}

output "deployment_summary" {
  value = terraform_data.deployment.input
}

check "name_prefix_quality" {
  assert {
    condition     = length(var.name_prefix) >= 5
    error_message = "name_prefix should usually be at least 5 characters long for readability."
  }
}
