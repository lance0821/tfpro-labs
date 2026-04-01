# Lab 10 — Module Composition and Output Wiring

Practice composing multiple child modules and wiring values between them through the root module.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- module outputs
- root module wiring
- implicit dependencies through references
- passing values between child modules

## Tasks
- create child modules for naming, iam, and compute
- expose values through outputs
- pass values through the root module correctly
- wire the instance profile into compute
- show the final instance id and profile name in outputs




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
The Terraform Pro exam expects you to reason about module boundaries and wire values correctly under time pressure.
