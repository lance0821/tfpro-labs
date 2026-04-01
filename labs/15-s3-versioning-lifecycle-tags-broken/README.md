# Lab 15 — S3 Versioning, Lifecycle, and Tags

Practice a common AWS Terraform pattern: S3 buckets with conditional versioning, lifecycle rules, and consistent tags.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `aws-wiring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `20 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- aws_s3_bucket
- aws_s3_bucket_versioning
- aws_s3_bucket_lifecycle_configuration
- merge for tags
- filtered for_each

## Tasks
- create S3 buckets from structured input
- enable versioning only for selected buckets
- add lifecycle rules only where retention is configured
- merge common tags with bucket-specific tags
- output bucket names in a readable shape

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
The Terraform Pro exam expects you to model realistic AWS patterns and use stable iteration with conditional resources.
