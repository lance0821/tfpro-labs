# Lab 03 — State, Import, and Moved Blocks

Practice bringing existing infrastructure under Terraform management and refactoring it safely.

## Lab metadata

- **Lab type:** `refactor`
- **Tier:** `operations-state`
- **Difficulty:** `hard`
- **Success mode:** `plan`
- **Estimated time:** `30 minutes`
- **AWS cost risk:** `low`
- **State mode:** `managed-refactor`

> [!IMPORTANT]
> This is a managed-refactor lab.
>
> Assume the infrastructure already exists and is already Terraform-managed.
> Your job is to change the configuration shape safely without introducing unintended destroy/create actions.
> The goal is to finish with a clean no-op `terraform plan`.

## What this lab is testing
- declarative import blocks
- moved blocks
- refactoring a flat config into a child module
- finishing with a no-op plan

## Tasks
- import an existing bucket
- refactor into a child module
- use a moved block
- finish with a clean plan




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
This is a high-value Terraform operations skill: change configuration structure without destroying existing infrastructure.
