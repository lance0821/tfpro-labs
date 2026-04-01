# Lab 19 — count to for_each Refactor

Practice refactoring from count-based resources to stable for_each keys without unintended recreation.

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
- count vs for_each
- stable resource addressing
- moved blocks
- state-aware refactoring
- finishing with a no-op plan

## Tasks
- identify the current count-based resource addresses
- refactor the configuration to use stable for_each keys
- preserve state continuity with moved blocks
- avoid unintended destroy or recreate actions
- finish with a clean no-op plan

## Starting assumptions
- the starting configuration already manages real infrastructure with count-based addresses
- the current configuration shape is functional but brittle
- the goal is to improve address stability without changing the real infrastructure

## Target end state
- resources are addressed with stable for_each keys instead of count indexes
- state continuity is preserved across the refactor
- no unintended destroy or recreate appears in the plan
- the final terraform plan is a no-op

## Recommended workflow
- start from the existing count-based configuration on main
- identify the old count indexes and the new logical keys
- refactor the resources to use for_each with stable keys
- add moved blocks to preserve address continuity
- verify that no unintended destroy or recreate appears in the plan
- finish with a clean no-op terraform plan

## Success criteria
- the resources are refactored from count to for_each safely
- moved blocks preserve state continuity
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
The Terraform Pro exam expects you to understand when count becomes brittle and how to migrate safely to stable for_each addressing.
