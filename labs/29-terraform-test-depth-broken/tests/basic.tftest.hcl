run "setup_apply" {
  command = apply

  variables {
    service_name    = "checkout"
    release_version = "v1"
    external_owner  = "platform"
  }
}

run "updated_release_plan" {
  command = plan

  variables {
    service_name    = "checkout"
    release_version = "v2"
    external_owner  = "platform"
  }

  assert {
    condition     = output.service_state.value.version == "v2"
    error_message = "Expected service_state.version to reflect the updated release_version."
  }
}
