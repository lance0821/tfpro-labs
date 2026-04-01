# Lab 13 — Workspaces and Environment Guardrails

Practice using terraform.workspace for environment-aware behavior and adding guardrails for higher-risk environments.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- terraform.workspace
- environment-aware configuration
- preconditions
- prod safety guardrails

## Tasks
- replace hardcoded environment assumptions with terraform.workspace
- shape values based on the active workspace
- add a guardrail that blocks an invalid prod configuration
- surface the active workspace clearly in outputs




## Success criteria
- invalid input values are rejected with variable validation where appropriate
- unsafe configuration is blocked with a precondition where appropriate
- advisory quality concerns are expressed with a check block where appropriate
- `terraform validate` passes
- `terraform plan` passes for the expected scenario(s)

## How to work this lab

This repository uses a single public working branch:

- `main` — broken starting point

Create your own working branch from `main`:

```bash
git switch -c my-solution
```

When you are done, run the normal Terraform workflow for the lab:

```bash
terraform init
terraform validate
terraform plan
```

## Why this lab matters
The Terraform Pro exam expects you to understand how environment separation affects configuration design and operational safety.
