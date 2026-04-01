variables {
  environment   = "dev"
  instance_type = "t3.micro"
  name_prefix   = "tfpro"
}

run "default_configuration_is_valid" {
  command = plan

  assert {
    condition     = output.deployment_summary.value.environment == "dev"
    error_message = "Expected default environment to be dev."
  }

  assert {
    condition     = output.deployment_summary.value.instance_type == "t3.micro"
    error_message = "Expected default instance type to be t3.micro."
  }
}

run "prod_requires_safer_instance_type" {
  command = plan

  variables {
    environment   = "prod"
    instance_type = "t3.micro"
    name_prefix   = "tfpro"
  }

  expect_failures = [terraform_data.deployment]
}