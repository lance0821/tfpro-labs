# Lab 02 — Dynamic Configuration

Practice stable Terraform patterns for iteration, conditional resources, and output shaping.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- for_each
- stable keys with maps
- filtered iteration
- conditional versioning and lifecycle resources
- map-shaped outputs

## Tasks
- review why count is a poor fit
- refactor list-based input into a map(object(...))
- replace count with for_each
- add conditional versioning and lifecycle resources
- shape outputs as maps




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
This is one of the most important Terraform Pro exam skill areas: reshaping data into stable resource addresses under time pressure.
