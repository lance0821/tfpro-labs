# Lab 17 — Data Sources and Cross-Stack Lookups

Practice using data sources for lookups and reasoning about values produced outside the current configuration.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- data sources
- lookup by tag and filter
- cross-stack thinking
- plan-time values

## Tasks
- look up existing infrastructure with data sources
- avoid hardcoded ids
- surface looked-up values clearly in outputs
- reason about what is known at plan time

## Starting assumptions
- the configuration should discover existing infrastructure instead of hardcoding ids
- looked-up values should come from data sources, not manual copy-paste
- the student should reason about what is known at plan time

## Target end state
- existing infrastructure is looked up with data sources
- hardcoded ids are removed
- outputs clearly show the looked-up values
- the final terraform plan is clean


## Success criteria
- no hardcoded infrastructure ids remain in the configuration
- data sources are used correctly to look up existing values
- outputs clearly expose the looked-up values
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
The Terraform Pro exam expects you to understand when to use data sources and how to consume values from infrastructure created elsewhere.
