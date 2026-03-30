# tfpro-labs

Hands-on Terraform Professional exam practice labs.

This repository is the public catalog for the Terraform Pro lab series. Each lab is a separate GitHub repository focused on one high-value exam topic.

## How to use these labs

1. Pick a lab from the catalog below.
2. Clone the lab repository.
3. Create your own working branch from `main`:

```bash
git switch -c my-solution
```

4. Work the lab locally.
5. Run the normal Terraform workflow:

```bash
terraform init
terraform validate
terraform plan
```

6. Compare your result against the lab instructions and success criteria in the repo `README.md`.

## Recommended study order

- Lab 01 — Lab 01 — Lifecycle and CLI
- Lab 02 — Lab 02 — Dynamic Configuration
- Lab 03 — Lab 03 — State, Import, and Moved Blocks
- Lab 04 — Lab 04 — Remote State and Backend Rules
- Lab 05 — Lab 05 — Workspaces and Cross-Stack Data Flow
- Lab 06 — Lab 06 — Providers, Aliases, and Auth
- Lab 07 — Lab 07 — Validation, Checks, and Tests
- Lab 08 — Lab 08 — IAM Chain and EC2
- Lab 09 — Lab 09 — Security Groups and Separate Rule Resources
- Lab 10 — Lab 10 — Module Composition and Output Wiring
- Lab 11 — Lab 11 — Import, Moved Blocks, and Refactor
- Lab 12 — Lab 12 — Remote State Consumer and Backend Rules
- Lab 13 — Lab 13 — Workspaces and Environment Guardrails
- Lab 14 — Lab 14 — Provider Aliases Through Modules
- Lab 15 — Lab 15 — S3 Versioning, Lifecycle, and Tags
- Lab 16 — Lab 16 — Filtered for_each and Map Outputs
- Lab 17 — Lab 17 — Data Sources and Cross-Stack Lookups
- Lab 18 — Lab 18 — Conditional Resources with count, one(), and try()

## Lab catalog

| Lab | Tier | Difficulty | Success mode | Focus | Repository |
|---|---|---|---|---|---|
| 01 | unassigned | unknown | plan | Practice core Terraform workflow habits and lifecycle protection. | [tfpro-01-lifecycle-cli-broken](https://github.com/lance0821/tfpro-01-lifecycle-cli-broken) |
| 02 | unassigned | unknown | plan | Practice stable Terraform patterns for iteration, conditional resources, and output shaping. | [tfpro-02-dynamic-config-broken](https://github.com/lance0821/tfpro-02-dynamic-config-broken) |
| 03 | unassigned | unknown | plan | Practice bringing existing infrastructure under Terraform management and refactoring it safely. | [tfpro-03-state-import-moved-broken](https://github.com/lance0821/tfpro-03-state-import-moved-broken) |
| 04 | unassigned | unknown | plan | Practice backend fundamentals and safe cross-stack data sharing. | [tfpro-04-remote-state-backend-broken](https://github.com/lance0821/tfpro-04-remote-state-backend-broken) |
| 05 | unassigned | unknown | plan | Practice separating environments with Terraform workspaces and consuming upstream outputs safely. | [tfpro-05-workspaces-cross-stack-broken](https://github.com/lance0821/tfpro-05-workspaces-cross-stack-broken) |
| 06 | unassigned | unknown | plan | Practice provider requirements, multi-region aliasing, and provider troubleshooting. | [tfpro-06-providers-alias-auth-broken](https://github.com/lance0821/tfpro-06-providers-alias-auth-broken) |
| 07 | unassigned | unknown | plan | Practice variable validation, preconditions, check blocks, and basic Terraform test-driven verification. | [tfpro-07-validation-checks-tests-broken](https://github.com/lance0821/tfpro-07-validation-checks-tests-broken) |
| 08 | unassigned | unknown | plan | Practice building the IAM chain correctly and attaching it to an EC2 instance. | [tfpro-08-iam-ec2-broken](https://github.com/lance0821/tfpro-08-iam-ec2-broken) |
| 09 | unassigned | unknown | plan | Practice the recommended AWS provider pattern of using separate security group rule resources instead of inline rules. | [tfpro-09-security-group-rules-broken](https://github.com/lance0821/tfpro-09-security-group-rules-broken) |
| 10 | unassigned | unknown | plan | Practice composing multiple child modules and wiring values between them through the root module. | [tfpro-10-module-composition-broken](https://github.com/lance0821/tfpro-10-module-composition-broken) |
| 11 | operations-state | hard | plan | Practice bringing existing infrastructure under Terraform management and refactoring it safely without unnecessary recreation. | [tfpro-11-import-moved-refactor-broken](https://github.com/lance0821/tfpro-11-import-moved-refactor-broken) |
| 12 | unassigned | unknown | plan | Practice backend limitations, remote state consumption, and the separation between producer and consumer configurations. | [tfpro-12-remote-state-backend-rules-broken](https://github.com/lance0821/tfpro-12-remote-state-backend-rules-broken) |
| 13 | unassigned | unknown | plan | Practice using terraform.workspace for environment-aware behavior and adding guardrails for higher-risk environments. | [tfpro-13-workspaces-guardrails-broken](https://github.com/lance0821/tfpro-13-workspaces-guardrails-broken) |
| 14 | unassigned | unknown | plan | Practice configuring aliased providers in the root module and passing them correctly into child modules. | [tfpro-14-provider-alias-modules-broken](https://github.com/lance0821/tfpro-14-provider-alias-modules-broken) |
| 15 | unassigned | unknown | plan | Practice a common AWS Terraform pattern: S3 buckets with conditional versioning, lifecycle rules, and consistent tags. | [tfpro-15-s3-versioning-lifecycle-tags-broken](https://github.com/lance0821/tfpro-15-s3-versioning-lifecycle-tags-broken) |
| 16 | unassigned | unknown | plan | Practice using filtered for_each expressions and shaping outputs as stable maps instead of fragile lists. | [tfpro-16-filtered-foreach-outputs-broken](https://github.com/lance0821/tfpro-16-filtered-foreach-outputs-broken) |
| 17 | unassigned | unknown | plan | Practice using data sources for lookups and reasoning about values produced outside the current configuration. | [tfpro-17-data-sources-cross-stack-broken](https://github.com/lance0821/tfpro-17-data-sources-cross-stack-broken) |
| 18 | unassigned | unknown | plan | Practice conditionally creating resources and safely reading their values with count, one(), and try(). | [tfpro-18-conditional-resources-broken](https://github.com/lance0821/tfpro-18-conditional-resources-broken) |

## What these labs are designed to teach

These labs focus on the kinds of skills that matter for a lab-heavy Terraform Professional exam:

- resource relationships
- stable addressing with `for_each`
- state-aware refactoring
- module composition
- remote state and backend rules
- provider aliasing
- validation and testing
- practical AWS provider patterns

## Suggested workflow

A good loop for each lab:

```bash
terraform init
terraform validate
terraform plan
```

Use `terraform console` when you need to test expressions or inspect data transformations.

## Notes

- Some labs are authoring-focused.
- Some labs are operations/state-focused.
- Some labs are better suited to conceptual reasoning than full end-to-end apply.
- The repositories are intentionally minimal so you can focus on the Terraform itself.

## Maintained by

This catalog is generated and maintained from a private factory repository.
