# Lab 20 — External Data Shaping with JSON and CSV

Practice decoding JSON and CSV input files, shaping them in locals, and creating resources from stable keyed data.

## Lab metadata

- **Lab type:** `design`
- **Tier:** `core-authoring`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `low`
- **State mode:** `stateless`


## What this lab is testing
- file()
- jsondecode()
- csvdecode()
- locals for data shaping
- stable keys for for_each
- map-shaped outputs

## Tasks
- decode the JSON and CSV input files
- normalize the external data in locals
- build a stable map keyed by logical resource name
- create resources with for_each instead of brittle index logic
- shape outputs as readable maps

## Starting assumptions
- the lab repository includes both JSON and CSV input files
- the starting configuration should read those files rather than hardcode the data
- the decoded data needs to be reshaped before it is safe to use for resource creation

## Target end state
- JSON and CSV inputs are decoded correctly
- locals are used to normalize the external data
- resources are created from stable keyed data with for_each
- outputs are shaped as readable maps
- the final terraform plan is clean


## Success criteria
- jsondecode(file(...)) and csvdecode(file(...)) are used correctly
- external data is normalized in locals before resource creation
- resources are keyed with stable logical names
- outputs are shaped as maps instead of brittle lists
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
The Terraform Pro exam expects you to shape real input data into safe Terraform structures, not just handwrite resource blocks.
