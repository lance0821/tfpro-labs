# Lab 01 — Lifecycle and CLI

Practice core Terraform workflow habits and lifecycle protection.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `easy`
- **Success mode:** `plan`
- **Estimated time:** `10 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- terraform init
- terraform validate
- terraform plan
- lifecycle protection with prevent_destroy

## Tasks
- run terraform init, terraform validate, and terraform plan
- replace the placeholder bucket name with a globally unique name
- add lifecycle protection so accidental destroys are blocked
- end with a clean terraform plan




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
This builds the CLI rhythm and lifecycle habits you need before the more advanced labs.
