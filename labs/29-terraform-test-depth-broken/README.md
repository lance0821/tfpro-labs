# Lab 29 - Terraform Test Depth

Practice deeper terraform test patterns including multi-run setup/teardown and richer assert coverage.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `quality`
- **Difficulty:** `hard`
- **Success mode:** `test`
- **Estimated time:** `30 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- run blocks
- command = apply setup
- multi-step test flow
- assert message quality

## Tasks
- fix failing assertions in the provided test flow
- add a setup run using command = apply
- verify outputs across sequential runs




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
The exam expects practical testing literacy beyond a single happy-path plan assertion.
