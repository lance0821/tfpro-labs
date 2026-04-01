# Lab 06 — Providers, Aliases, and Auth

Practice provider requirements, multi-region aliasing, and provider troubleshooting.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- required_providers
- provider aliasing
- passing aliased providers into child modules
- child module provider requirements

## Tasks
- fix provider source and aliasing
- pass default and aliased providers into a child module
- make the child module declare provider requirements correctly
- show both regions clearly in outputs




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
The Pro exam expects more than basic provider usage. You need to understand sourcing, aliasing, and module wiring under pressure.
