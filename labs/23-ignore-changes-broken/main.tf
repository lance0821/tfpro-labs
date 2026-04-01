variable "service_name" {
  description = "Service identifier."
  type        = string
  default     = "checkout"
}

variable "release_version" {
  description = "Release version for rollout tracking."
  type        = string
  default     = "v1"
}

variable "external_owner" {
  description = "Owner tag that may drift outside Terraform."
  type        = string
  default     = "platform"
}

resource "terraform_data" "release_marker" {
  input = {
    version = var.release_version
  }
}

resource "terraform_data" "service" {
  input = {
    name    = var.service_name
    version = var.release_version
    owner   = var.external_owner
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [input["owner"]]
    replace_triggered_by  = [terraform_data.release_marker]
  }
}

output "service_state" {
  value = terraform_data.service.output
}
