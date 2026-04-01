# Lab 09 — Security Groups and Separate Rule Resources

Practice the recommended AWS provider pattern of using separate security group rule resources instead of inline rules.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `aws-wiring`
- **Difficulty:** `easy`
- **Success mode:** `plan`
- **Estimated time:** `15 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- aws_security_group
- aws_vpc_security_group_ingress_rule
- aws_vpc_security_group_egress_rule
- for_each with stable keys
- avoiding inline rule drift

## Tasks
- create a security group shell resource
- model ingress rules with separate rule resources
- model egress rules with separate rule resources
- use for_each to create multiple ingress rules cleanly
- output the security group id

## Starting assumptions
- bucket configuration is driven from structured input
- not every bucket should receive versioning or lifecycle rules
- common tags should be merged with bucket-specific tags

## Target end state
- buckets are created from stable keyed input
- versioning is enabled only where configured
- lifecycle rules are created only where retention is configured
- outputs are map-shaped and easy to read


## Success criteria
- bucket resources are created from structured input with stable keys
- versioning is applied only to the intended buckets
- lifecycle configuration is applied only where retention is defined
- common and bucket-specific tags are merged correctly
- outputs are shaped as maps
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
The Terraform Pro exam expects you to know practical AWS provider patterns, and separate security group rule resources are the safer modern approach.
