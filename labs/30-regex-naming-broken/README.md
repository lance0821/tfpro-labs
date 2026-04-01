# Lab 30 - Regex Naming Rules

Practice regex-driven naming validation and normalization for predictable resource naming standards.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- regex() and regexall()
- replace() and format()
- naming normalization

## Tasks
- enforce naming policy with regex-based validation
- normalize project names for resource-safe usage
- emit normalized outputs for downstream modules




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
Terraform Pro exam scenarios often test string and naming transformations under policy constraints.
