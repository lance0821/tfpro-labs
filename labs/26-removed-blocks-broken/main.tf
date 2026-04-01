variable "bucket_name" {
  description = "Logical bucket name used by the refactored address."
  type        = string
  default     = "tfpro-state-refactor"
}

resource "terraform_data" "bucket_new" {
  input = {
    name = var.bucket_name
  }
}

moved {
  from = terraform_data.bucket_old
  to   = terraform_data.bucket_new
}

removed {
  from = terraform_data.legacy_attachment

  lifecycle {
    destroy = false
  }
}

output "bucket_new_name" {
  value = terraform_data.bucket_new.output.name
}
