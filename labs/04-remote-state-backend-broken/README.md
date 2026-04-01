# Lab 04 — Remote State and Backend Rules

Practice backend fundamentals and safe cross-stack data sharing.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- backend block rules
- why backend configuration is special
- terraform_remote_state
- producer vs consumer stack design

## Tasks
- identify why the backend block is invalid
- remove dynamic backend assumptions
- use terraform_remote_state correctly
- surface consumed values clearly




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
Remote state, backend rules, and cross-stack thinking are all part of the Terraform Pro operations side.
