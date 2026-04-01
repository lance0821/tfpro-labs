# Lab 31 - Partial Backend Configuration

Practice splitting backend settings between static Terraform config and environment-specific backend.hcl values passed at init time.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `conceptual`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- backend partial configuration
- terraform init -backend-config
- environment-safe backend patterns

## Tasks
- identify values that should not be hardcoded in backend blocks
- apply a partial backend configuration pattern
- use backend config files at init time




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
The exam validates safe backend operational practices and environment portability.
