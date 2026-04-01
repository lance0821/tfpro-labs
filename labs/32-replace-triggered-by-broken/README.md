# Lab 32 - Replace Triggered By

Practice forcing safe replacement when upstream dependency changes are not automatically represented as direct argument drift.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- replace_triggered_by semantics
- lifecycle dependency design
- safe replacement signaling

## Tasks
- identify dependency changes that should trigger replacement
- wire replace_triggered_by to explicit change signals
- confirm replacement behavior in terraform plan




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
The exam includes lifecycle replacement edge cases where dependency-driven replacement must be explicit.
