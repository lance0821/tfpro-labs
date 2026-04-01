# Lab 05 — Workspaces and Cross-Stack Data Flow

Practice separating environments with Terraform workspaces and consuming upstream outputs safely.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- terraform workspace
- terraform.workspace
- terraform_remote_state
- basic safety guardrails for prod

## Tasks
- replace hardcoded environment assumptions
- make outputs reflect terraform.workspace
- consume upstream values via terraform_remote_state
- block t3.micro in prod




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
The Pro exam is not just about syntax. It tests whether you can think in terms of environments and state separation.
