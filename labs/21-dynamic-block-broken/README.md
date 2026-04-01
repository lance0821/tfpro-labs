# Lab 21 - Dynamic Blocks

Practice using dynamic nested blocks for repeated resource arguments and avoid brittle static duplication.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- dynamic nested blocks
- list(object) inputs
- difference from resource for_each

## Tasks
- model repeated ingress rules from input data
- replace static nested block duplication
- finish with a clean terraform plan




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
Dynamic blocks are a common Terraform Pro exam pattern when repeated nested arguments must be driven by input data.
