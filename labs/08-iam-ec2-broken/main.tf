provider "aws" {
  region = "us-east-1"
}

data "aws_iam_policy_document" "trust" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "app" {
  name               = "tfpro-iam-role"
  assume_role_policy = data.aws_iam_policy_document.trust.json
}

data "aws_iam_policy_document" "permissions" {
  statement {
    effect = "Allow"

    actions = [
      "s3:ListBucket"
    ]

    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "app" {
  name   = "tfpro-inline-policy"
  role   = aws_iam_role.app.id
  policy = data.aws_iam_policy_document.permissions.json
}

resource "aws_iam_instance_profile" "app" {
  name = "tfpro-instance-profile"
  role = aws_iam_role.app.name
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "app" {
  ami                  = data.aws_ami.al2023.id
  instance_type        = "t3.micro"
  iam_instance_profile = aws_iam_instance_profile.app.name

  tags = {
    Name = "tfpro-iam-ec2"
  }
}

output "instance_id" {
  value = aws_instance.app.id
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.app.name
}
