variable "db_username" {
  description = "Database username."
  type        = string
  default     = "app_user"
}

variable "db_password" {
  description = "Database password used by the application."
  type        = string
  sensitive   = true
  default     = "REPLACE-ME"
}

locals {
  connection_string = format("postgres://%s:%s@db.internal:5432/app", var.db_username, var.db_password)
}

resource "terraform_data" "database_config" {
  input = {
    username = var.db_username
    password = var.db_password
  }
}

output "connection_string" {
  value     = local.connection_string
  sensitive = true
}

output "database_config" {
  value     = terraform_data.database_config.output
  sensitive = true
}

output "password_debug" {
  value = nonsensitive(var.db_password)
}
