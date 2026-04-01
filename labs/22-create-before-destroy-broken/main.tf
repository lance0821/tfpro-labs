

provider "aws" {
  region = "us-east-1"
}

variable "service_name" {
  description = "Service identifier used in resource naming."
  type        = string
  default     = "api"
}

variable "release" {
  description = "Release identifier that can force replacement during rollouts."
  type        = string
  default     = "v1"
}

resource "terraform_data" "release_marker" {
  input = {
    release = var.release
  }
}

resource "terraform_data" "service" {
  input = {
    name    = var.service_name
    release = var.release
  }

  lifecycle {
    # Intentionally incomplete for lab correction: students should reason about
    # zero-downtime replacement behavior and add create_before_destroy.
    replace_triggered_by = [terraform_data.release_marker]
  }
}

output "service_payload" {
  value = terraform_data.service.output
}
