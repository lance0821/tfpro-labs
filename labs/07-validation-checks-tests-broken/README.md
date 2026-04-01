# Lab 07 — Validation, Checks, and Tests

Practice variable validation, preconditions, check blocks, and basic Terraform test-driven verification.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `quality`
- **Difficulty:** `medium`
- **Success mode:** `test`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- variable validation
- preconditions
- check blocks
- terraform test basics

## Tasks
- add validation to reject invalid input values
- add a precondition that enforces a meaningful runtime rule
- add a check block for a non-blocking quality assertion
- make the configuration suitable for a basic terraform test




## Success criteria
- invalid input values are rejected with variable validation where appropriate
- unsafe configuration is blocked with a precondition where appropriate
- advisory quality concerns are expressed with a check block where appropriate
- `terraform validate` passes
- `terraform test` passes for the expected scenario(s)

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
The Terraform Pro exam is not just about creating resources. It also tests whether you can enforce constraints, express assumptions, and verify behavior clearly.
