# Lab 24 - Sensitive Values and Outputs

Practice correctly marking sensitive inputs and outputs, understanding redaction behavior, and avoiding accidental secret exposure.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- sensitive variables
- sensitive outputs
- nonsensitive() tradeoffs

## Tasks
- mark secret-bearing values as sensitive
- fix outputs that leak credentials
- preserve useful diagnostics without exposing secrets




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
Terraform Pro scenarios often include secret-safe output shaping and redaction expectations.
