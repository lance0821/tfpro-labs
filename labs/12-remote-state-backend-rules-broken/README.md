# Lab 12 — Remote State Consumer and Backend Rules

Practice backend limitations, remote state consumption, and the separation between producer and consumer configurations.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- backend block limitations
- terraform_remote_state
- producer vs consumer configuration design
- clear output shaping

## Tasks
- identify why backend blocks cannot use normal Terraform expressions
- model a clean producer and consumer split
- consume upstream values with terraform_remote_state
- surface the consumed values clearly in outputs

## Starting assumptions
- backend configuration must stay static and cannot depend on normal Terraform expressions
- upstream state is produced by a separate configuration
- this lab is about consuming outputs safely, not redefining backend behavior dynamically

## Target end state
- backend misuse is removed
- terraform_remote_state is used correctly to consume upstream outputs
- the consumed values are surfaced clearly in outputs
- the final terraform plan is clean


## Success criteria
- backend configuration is no longer treated like normal expression-driven Terraform configuration
- the producer and consumer responsibilities are clearly separated
- terraform_remote_state is used correctly
- the final terraform plan is clean

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
The Terraform Pro exam expects you to understand state sharing patterns and backend rules, not just basic resource authoring.
