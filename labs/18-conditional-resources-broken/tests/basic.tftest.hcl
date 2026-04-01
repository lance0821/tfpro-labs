run "default_no_bucket_created" {
  command = plan

  variables {
    create_bucket = false
  }

  assert {
    condition     = output.bucket_arn.value == null
    error_message = "Expected bucket_arn to be null when create_bucket is false."
  }
}

run "bucket_created_when_enabled" {
  command = plan

  variables {
    create_bucket = true
  }

  assert {
    condition     = output.bucket_name.value != null
    error_message = "Expected bucket_name to be set when create_bucket is true."
  }
}