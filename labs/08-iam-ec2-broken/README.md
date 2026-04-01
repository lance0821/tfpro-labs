# Lab 08 — IAM Chain and EC2

Practice building the IAM chain correctly and attaching it to an EC2 instance.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `aws-wiring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- IAM trust policy
- IAM permissions policy
- role attachment
- instance profile wiring
- EC2 integration

## Tasks
- fix the IAM trust policy
- create a working permissions policy
- attach the policy to the role correctly
- create the instance profile
- attach the instance profile to EC2

## Starting assumptions
- the IAM role, policy, instance profile, and EC2 instance must be wired together correctly
- the trust policy controls who can assume the role
- the instance profile is the bridge between IAM and EC2

## Target end state
- the trust policy is valid for EC2
- the permissions policy is attached correctly
- the instance profile is wired to the role
- the EC2 instance uses the instance profile correctly


## Success criteria
- the IAM trust relationship is correct for EC2
- the permissions policy is attached to the role correctly
- the instance profile is created and referenced correctly
- the EC2 resource is wired to the instance profile
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
The Terraform Pro exam expects you to understand resource relationships and wire AWS IAM resources together correctly under time pressure.
