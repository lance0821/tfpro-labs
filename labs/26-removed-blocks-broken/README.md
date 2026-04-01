# Lab 26 - Removed Blocks

Practice state-preserving refactors using moved and removed blocks so Terraform does not destroy infrastructure unexpectedly.

## Lab metadata

- **Lab type:** `refactor`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `managed-refactor`

> [!IMPORTANT]
> This is a managed-refactor lab.
>
> Assume the infrastructure already exists and is already Terraform-managed.
> Your job is to change the configuration shape safely without introducing unintended destroy/create actions.
> The goal is to finish with a clean no-op `terraform plan`.

## What this lab is testing
- moved block usage
- removed block usage
- safe state refactors

## Tasks
- identify state address changes in the refactor
- add moved blocks for renamed addresses
- add removed blocks where config is intentionally dropped




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
The exam expects you to manage state transitions safely during refactors, not just rewrite resource blocks.
