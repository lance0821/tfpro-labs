


terraform {
  required_version = ">= 1.6.0"
}

locals {
  workspace_topology = {
    producer_workspace = "network-prod"
    consumer_workspace = "app-prod"
    run_trigger        = "producer -> consumer"
  }

  run_pipeline = [
    "vcs_push",
    "speculative_plan",
    "policy_checks",
    "cost_estimation",
    "apply"
  ]

  scenario_prompts = [
    "Which users should have plan-only access vs apply access?",
    "When should auto-apply be disabled for safety?",
    "Should policy checks be advisory or hard-mandatory for production?",
    "When is an API-driven run better than a VCS-driven run?"
  ]
}

output "workspace_topology" {
  value = local.workspace_topology
}

output "run_pipeline" {
  value = local.run_pipeline
}

output "scenario_prompts" {
  value = local.scenario_prompts
}
