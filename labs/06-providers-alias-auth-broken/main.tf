provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "secondary"
  region = "us-west-2"
}

data "aws_region" "primary" {}

data "aws_region" "secondary" {
  provider = aws.secondary
}

output "primary_region" {
  value = data.aws_region.primary.name
}

output "secondary_region" {
  value = data.aws_region.secondary.name
}
