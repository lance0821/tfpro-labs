# Lab 16 — Filtered for_each and Map Outputs

Practice using filtered for_each expressions and shaping outputs as stable maps instead of fragile lists.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- filtered for_each
- stable keys
- map-shaped outputs
- conditional resource creation

## Tasks
- create resources from structured input with stable keys
- filter iteration so only selected resources are created
- avoid count-based indexing
- shape outputs as maps keyed by logical names




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
The Terraform Pro exam expects you to reason about stable addressing and clean output shaping under time pressure.
