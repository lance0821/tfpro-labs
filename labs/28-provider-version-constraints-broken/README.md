# Lab 28 - Provider Version Constraints

Practice selecting safe provider version constraints and understanding constraint semantics used in Terraform Professional scenarios.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `validate`
- **Estimated time:** `15 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- constraint operators (~>, >=, =, !=)
- root vs module versioning strategy
- safe pinning and upgrade boundaries

## Tasks
- analyze the current provider constraint and its risk
- replace it with a safer pessimistic or bounded strategy
- justify the chosen constraint for team operations




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
The exam tests practical provider management choices that balance upgrade safety and maintainability.
