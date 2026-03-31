# tfpro-labs

Hands-on Terraform Professional exam practice labs.

This repository is the public catalog for the Terraform Pro lab series. Each lab is a separate GitHub repository focused on one high-value exam topic.

## Best starter labs

- **Lab 01 — Lifecycle and CLI**
- **Lab 07 — Validation, Checks, and Tests**
- **Lab 09 — Security Groups and Separate Rule Resources**
- **Lab 16 — Filtered `for_each` and Map Outputs**

## Best refactor labs

- **Lab 11 — Import, Moved Blocks, and Refactor**
- **Lab 19 — count to `for_each` Refactor**

## Best quality and test labs

- **Lab 07 — Validation, Checks, and Tests**
- **Lab 10 — Module Composition and Output Wiring**
- **Lab 15 — S3 Versioning, Lifecycle, and Tags**
- **Lab 16 — Filtered `for_each` and Map Outputs**
- **Lab 18 — Conditional Resources with `count`, `one()`, and `try()`**

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

- Lab 01 — Lifecycle and CLI
- Lab 02 — Dynamic Configuration
- Lab 03 — State, Import, and Moved Blocks
- Lab 04 — Remote State and Backend Rules
- Lab 05 — Workspaces and Cross-Stack Data Flow
- Lab 06 — Providers, Aliases, and Auth
- Lab 07 — Validation, Checks, and Tests
- Lab 08 — IAM Chain and EC2
- Lab 09 — Security Groups and Separate Rule Resources
- Lab 10 — Module Composition and Output Wiring
- Lab 11 — Import, Moved Blocks, and Refactor
- Lab 12 — Remote State Consumer and Backend Rules
- Lab 13 — Workspaces and Environment Guardrails
- Lab 14 — Provider Aliases Through Modules
- Lab 15 — S3 Versioning, Lifecycle, and Tags
- Lab 16 — Filtered for_each and Map Outputs
- Lab 17 — Data Sources and Cross-Stack Lookups
- Lab 18 — Conditional Resources with count, one(), and try()
- Lab 19 — count to for_each Refactor

## Lab catalog by tier

### Core authoring

| Lab | Difficulty | Success mode | Time | Focus | Repository |
|---|---|---|---|---|---|
| 01 | easy | plan | 10 min | Practice core Terraform workflow habits and lifecycle protection. | [tfpro-01-lifecycle-cli-broken](https://github.com/lance0821/tfpro-01-lifecycle-cli-broken) |
| 02 | medium | plan | 20 min | Practice stable Terraform patterns for iteration, conditional resources, and output shaping. | [tfpro-02-dynamic-config-broken](https://github.com/lance0821/tfpro-02-dynamic-config-broken) |
| 10 | medium | plan | 20 min | Practice composing multiple child modules and wiring values between them through the root module. | [tfpro-10-module-composition-broken](https://github.com/lance0821/tfpro-10-module-composition-broken) |
| 16 | medium | plan | 20 min | Practice using filtered for_each expressions and shaping outputs as stable maps instead of fragile lists. | [tfpro-16-filtered-foreach-outputs-broken](https://github.com/lance0821/tfpro-16-filtered-foreach-outputs-broken) |
| 18 | medium | plan | 15 min | Practice conditionally creating resources and safely reading their values with count, one(), and try(). | [tfpro-18-conditional-resources-broken](https://github.com/lance0821/tfpro-18-conditional-resources-broken) |

### AWS wiring

| Lab | Difficulty | Success mode | Time | Focus | Repository |
|---|---|---|---|---|---|
| 08 | medium | plan | 20 min | Practice building the IAM chain correctly and attaching it to an EC2 instance. | [tfpro-08-iam-ec2-broken](https://github.com/lance0821/tfpro-08-iam-ec2-broken) |
| 09 | easy | plan | 15 min | Practice the recommended AWS provider pattern of using separate security group rule resources instead of inline rules. | [tfpro-09-security-group-rules-broken](https://github.com/lance0821/tfpro-09-security-group-rules-broken) |
| 15 | medium | plan | 20 min | Practice a common AWS Terraform pattern: S3 buckets with conditional versioning, lifecycle rules, and consistent tags. | [tfpro-15-s3-versioning-lifecycle-tags-broken](https://github.com/lance0821/tfpro-15-s3-versioning-lifecycle-tags-broken) |

### Operations and state

| Lab | Difficulty | Success mode | Time | Focus | Repository |
|---|---|---|---|---|---|
| 03 | hard | plan | 30 min | Practice bringing existing infrastructure under Terraform management and refactoring it safely. | [tfpro-03-state-import-moved-broken](https://github.com/lance0821/tfpro-03-state-import-moved-broken) |
| 04 | medium | plan | 25 min | Practice backend fundamentals and safe cross-stack data sharing. | [tfpro-04-remote-state-backend-broken](https://github.com/lance0821/tfpro-04-remote-state-backend-broken) |
| 05 | medium | plan | 25 min | Practice separating environments with Terraform workspaces and consuming upstream outputs safely. | [tfpro-05-workspaces-cross-stack-broken](https://github.com/lance0821/tfpro-05-workspaces-cross-stack-broken) |
| 06 | medium | plan | 25 min | Practice provider requirements, multi-region aliasing, and provider troubleshooting. | [tfpro-06-providers-alias-auth-broken](https://github.com/lance0821/tfpro-06-providers-alias-auth-broken) |
| 11 | hard | plan | 30 min | Practice bringing existing infrastructure under Terraform management and refactoring it safely without unnecessary recreation. | [tfpro-11-import-moved-refactor-broken](https://github.com/lance0821/tfpro-11-import-moved-refactor-broken) |
| 12 | medium | plan | 25 min | Practice backend limitations, remote state consumption, and the separation between producer and consumer configurations. | [tfpro-12-remote-state-backend-rules-broken](https://github.com/lance0821/tfpro-12-remote-state-backend-rules-broken) |
| 13 | medium | plan | 25 min | Practice using terraform.workspace for environment-aware behavior and adding guardrails for higher-risk environments. | [tfpro-13-workspaces-guardrails-broken](https://github.com/lance0821/tfpro-13-workspaces-guardrails-broken) |
| 14 | medium | plan | 25 min | Practice configuring aliased providers in the root module and passing them correctly into child modules. | [tfpro-14-provider-alias-modules-broken](https://github.com/lance0821/tfpro-14-provider-alias-modules-broken) |
| 17 | medium | plan | 20 min | Practice using data sources for lookups and reasoning about values produced outside the current configuration. | [tfpro-17-data-sources-cross-stack-broken](https://github.com/lance0821/tfpro-17-data-sources-cross-stack-broken) |
| 19 | hard | plan | 30 min | Practice refactoring from count-based resources to stable for_each keys without unintended recreation. | [tfpro-19-count-to-foreach-refactor-broken](https://github.com/lance0821/tfpro-19-count-to-foreach-refactor-broken) |

### Quality

| Lab | Difficulty | Success mode | Time | Focus | Repository |
|---|---|---|---|---|---|
| 07 | medium | test | 20 min | Practice variable validation, preconditions, check blocks, and basic Terraform test-driven verification. | [tfpro-07-validation-checks-tests-broken](https://github.com/lance0821/tfpro-07-validation-checks-tests-broken) |

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
