provider "aws" {
  region = "us-east-1"
}

variable "allowed_ports" {
  description = "Ports that should be allowed inbound."
  type        = list(number)
  default     = [22, 80, 443]
}

variable "allowed_cidr" {
  description = "CIDR allowed to reach the security group."
  type        = string
  default     = "0.0.0.0/0"
}

resource "aws_security_group" "web" {
  name        = "tfpro-sg-rules"
  description = "Security group for the lab"
}

resource "aws_vpc_security_group_ingress_rule" "web" {
  for_each = toset([for p in var.allowed_ports : tostring(p)])

  security_group_id = aws_security_group.web.id
  ip_protocol       = "tcp"
  from_port         = tonumber(each.value)
  to_port           = tonumber(each.value)
  cidr_ipv4         = var.allowed_cidr
}

resource "aws_vpc_security_group_egress_rule" "web" {
  security_group_id = aws_security_group.web.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

output "security_group_id" {
  value = aws_security_group.web.id
}
