# Lab 23 - Ignore Changes

Practice using ignore_changes for attributes owned by external systems while preserving Terraform intent for managed fields.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- ignore_changes usage
- externally managed attributes
- drift tolerance patterns

## Tasks
- identify attributes that should tolerate drift
- apply ignore_changes with precise scope
- leave managed attributes under Terraform control




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
The exam tests practical lifecycle decision-making when Terraform shares ownership with external systems.
