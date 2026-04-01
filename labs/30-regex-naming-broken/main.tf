variable "project_name" {
  description = "Project identifier to validate and normalize."
  type        = string
  default     = "payments_api"

  validation {
    condition     = can(regex("^[A-Za-z0-9_-]+$", var.project_name))
    error_message = "project_name must include only letters, numbers, underscores, or hyphens."
  }
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "environment must be one of dev, stage, prod."
  }
}

locals {
  normalized_name = lower(replace(var.project_name, "_", "-"))
  name_parts      = regexall("[a-z0-9]+", local.normalized_name)
  final_name      = format("%s-%s", local.normalized_name, var.environment)
}

resource "terraform_data" "naming" {
  input = {
    normalized = local.normalized_name
    parts      = local.name_parts
    final      = local.final_name
  }
}

output "normalized_name" {
  value = terraform_data.naming.output.normalized
}

output "name_parts" {
  value = terraform_data.naming.output.parts
}

output "final_name" {
  value = terraform_data.naming.output.final
}
