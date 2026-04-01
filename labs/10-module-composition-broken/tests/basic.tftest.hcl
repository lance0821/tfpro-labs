run "module_outputs_are_wired" {
  command = plan

  assert {
    condition     = output.instance_id.value != null
    error_message = "Expected instance_id output to be set."
  }

  assert {
    condition     = output.instance_profile_name.value != null
    error_message = "Expected instance_profile_name output to be set."
  }
}
