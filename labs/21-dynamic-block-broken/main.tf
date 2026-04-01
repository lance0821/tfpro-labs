provider "aws" {
  region = "us-east-1"
}

variable "name_prefix" {
  description = "Prefix for security group naming."
  type        = string
  default     = "tfpro-dynamic"
}

variable "ingress_rules" {
  description = "Ingress rules to render as nested blocks."
  type = list(object({
    description = string
    port        = number
    cidr_block  = string
  }))

  default = [
    {
      description = "HTTP"
      port        = 80
      cidr_block  = "0.0.0.0/0"
    },
    {
      description = "HTTPS"
      port        = 443
      cidr_block  = "0.0.0.0/0"
    }
  ]
}

resource "aws_security_group" "web" {
  name        = format("%s-web", var.name_prefix)
  description = "Dynamic ingress example security group"

  dynamic "ingress" {
    for_each = var.ingress_rules

    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = [ingress.value.cidr_block]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "ingress_ports" {
  value = [for rule in var.ingress_rules : rule.port]
}
