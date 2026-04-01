run "lifecycle_meta_arguments_are_present" {
  command = plan

  assert {
    condition     = output.service_state.value.name != null
    error_message = "Expected service_state.name to be present."
  }

  assert {
    condition     = output.service_state.value.version != null
    error_message = "Expected service_state.version to be present."
  }
}
