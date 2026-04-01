# Lab 25 - HCP Terraform Operations

Practice conceptual operations topics including VCS-driven workflows, run triggers, policy checks, cost estimation, team permissions, and API-driven runs.

## Lab metadata

- **Lab type:** `design`
- **Tier:** `operations-state`
- **Difficulty:** `hard`
- **Success mode:** `conceptual`
- **Estimated time:** `30 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- vcs-driven run lifecycle
- run trigger topology
- policy enforcement modes
- cost estimation limits
- workspace permissions
- api-driven runs

## Tasks
- map a producer-consumer workspace topology
- decide where policy checks should block applies
- choose plan-only and apply permission boundaries
- explain when api-driven runs are preferable to vcs-driven runs




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
A large portion of Terraform Pro exam coverage is operational and platform-oriented rather than pure HCL authoring.
