run "map_outputs_are_stable" {
  command = plan

  assert {
    condition     = output.bucket_names.value != null
    error_message = "Expected bucket_names output to be present."
  }

  assert {
    condition     = can(keys(output.bucket_names.value))
    error_message = "Expected bucket_names to be a map-shaped output."
  }

  assert {
    condition     = can(output.versioned_buckets.value)
    error_message = "Expected versioned_buckets output to be present."
  }
}