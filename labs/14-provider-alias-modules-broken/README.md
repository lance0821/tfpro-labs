# Lab 14 — Provider Aliases Through Modules

Practice configuring aliased providers in the root module and passing them correctly into child modules.

## Lab metadata

- **Lab type:** `correction`
- **Tier:** `operations-state`
- **Difficulty:** `medium`
- **Success mode:** `plan`
- **Estimated time:** `25 minutes`
- **AWS cost risk:** `none`
- **State mode:** `stateless`


## What this lab is testing
- provider aliasing
- configuration_aliases
- passing providers into modules
- multi-region module wiring

## Tasks
- configure a default provider and an aliased provider
- pass the aliased provider into a child module
- declare configuration_aliases in the child module correctly
- surface both regions clearly in outputs

## Starting assumptions
- provider configuration belongs in the root module, not in child modules
- the child module should consume providers passed from the root
- one region is handled by the default provider and another by an aliased provider

## Target end state
- the root module configures both the default and aliased providers correctly
- the child module receives the aliased provider through the module call
- configuration_aliases is declared correctly in the child module
- outputs clearly show both regions are wired as intended


## Success criteria
- provider configuration remains in the root module
- the aliased provider is passed into the child module correctly
- the child module declares configuration_aliases correctly
- the final terraform plan is clean and outputs prove the multi-region wiring

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
The Terraform Pro exam expects you to understand provider aliasing and module provider wiring under time pressure.
