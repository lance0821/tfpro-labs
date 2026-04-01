# Lab 11 — Import, Moved Blocks, and Refactor

Practice bringing existing infrastructure under Terraform management and refactoring it safely without unnecessary recreation.

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
- refactoring configuration safely
- finishing with a no-op plan

## Tasks
- bring an existing bucket under Terraform management
- refactor the resource into a child module
- use a moved block to preserve state continuity
- finish with a clean no-op plan

## Starting assumptions
- the bucket already exists before the refactor begins
- the starting configuration represents the pre-refactor shape
- the goal is to preserve the infrastructure while improving the configuration structure

## Target end state
- the bucket is managed by Terraform in the refactored structure
- state continuity is preserved across the move
- the final terraform plan is a no-op

## Recommended workflow
- start from the existing pre-refactor configuration on main
- identify the current resource address and the desired refactored address
- introduce the new module structure without changing the real infrastructure
- use import and moved blocks where needed to preserve state continuity
- verify that no unintended destroy or recreate appears in the plan
- finish with a clean no-op terraform plan

## Success criteria
- the existing bucket is brought under Terraform management correctly
- the refactor preserves state continuity
- no unintended destroy or recreate is introduced
- the final terraform plan is a no-op

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
The Terraform Pro exam expects you to understand state-aware refactoring and safe configuration evolution under time pressure.
