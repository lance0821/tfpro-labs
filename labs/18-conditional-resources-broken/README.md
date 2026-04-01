# Lab 18 — Conditional Resources with count, one(), and try()

Practice conditionally creating resources and safely reading their values with count, one(), and try().

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `15 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- count = 0 or 1
- safe conditional outputs
- one()
- try()
- avoiding brittle index access

## Tasks
- conditionally create a resource with count
- avoid unsafe direct indexing when the resource may not exist
- use one() for a clean conditional output
- use try() where an expression may fail
- surface the created resource value clearly




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
The Terraform Pro exam expects you to reason about optional resources and write expressions that stay safe when count is zero.
