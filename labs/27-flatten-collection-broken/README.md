# Lab 27 - Flatten and Merge Collections

Practice flattening nested structures and merging tags into stable maps suitable for for_each-driven resource creation.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- nested collection transforms
- stable map keys
- merge() for layered tags

## Tasks
- reshape nested input data with flatten
- construct stable for_each keys
- merge global and team-level tags
- return readable map outputs




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
Terraform Pro exam questions often require transforming complex input structures before safe iteration.
