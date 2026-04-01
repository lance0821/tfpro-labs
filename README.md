# tfpro-labs

Hands-on Terraform Professional exam practice labs.

This repository is the public monorepo for the Terraform Pro lab series. Each lab lives in its own folder and includes a dedicated `README.md`.

## Best starter labs

- **Lab 01 - Lifecycle and CLI**
- **Lab 07 - Validation, Checks, and Tests**
- **Lab 09 - Security Groups and Separate Rule Resources**
- **Lab 16 - Filtered `for_each` and Map Outputs**

## Best refactor labs

- **Lab 11 - Import, Moved Blocks, and Refactor**
- **Lab 19 - count to `for_each` Refactor**

## Best quality and test labs

- **Lab 07 - Validation, Checks, and Tests**
- **Lab 10 - Module Composition and Output Wiring**
- **Lab 15 - S3 Versioning, Lifecycle, and Tags**
- **Lab 16 - Filtered `for_each` and Map Outputs**
- **Lab 18 - Conditional Resources with `count`, `one()`, and `try()`**

## How to use these labs

1. Pick a lab from the catalog below.
2. Clone this repository once.
3. Create your own working branch from `main`:

```bash
git switch -c my-solution
```

4. Change directory into the selected lab folder.
5. Run the normal Terraform workflow:

```bash
terraform init
terraform validate
terraform plan
```

6. Compare your result against the lab instructions and success criteria in that lab's `README.md`.

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
- Lab 20 — External Data Shaping with JSON and CSV
- Lab 21 - Dynamic Blocks
- Lab 22 - Create Before Destroy
- Lab 23 - Ignore Changes
- Lab 24 - Sensitive Values and Outputs
- Lab 25 - HCP Terraform Operations
- Lab 26 - Removed Blocks
- Lab 27 - Flatten and Merge Collections
- Lab 28 - Provider Version Constraints
- Lab 29 - Terraform Test Depth
- Lab 30 - Regex Naming Rules
- Lab 31 - Partial Backend Configuration
- Lab 32 - Replace Triggered By

## Lab catalog by tier

### Core authoring

| Lab | Difficulty | Success mode | Time | Focus | Folder |
|---|---|---|---|---|---|
| 01 | easy | plan | 10 min | Practice core Terraform workflow habits and lifecycle protection. | [labs/01-lifecycle-cli-broken](labs/01-lifecycle-cli-broken) |
| 02 | medium | plan | 20 min | Practice stable Terraform patterns for iteration, conditional resources, and output shaping. | [labs/02-dynamic-config-broken](labs/02-dynamic-config-broken) |
| 10 | medium | plan | 20 min | Practice composing multiple child modules and wiring values between them through the root module. | [labs/10-module-composition-broken](labs/10-module-composition-broken) |
| 16 | medium | plan | 20 min | Practice using filtered for_each expressions and shaping outputs as stable maps instead of fragile lists. | [labs/16-filtered-foreach-outputs-broken](labs/16-filtered-foreach-outputs-broken) |
| 18 | medium | plan | 15 min | Practice conditionally creating resources and safely reading their values with count, one(), and try(). | [labs/18-conditional-resources-broken](labs/18-conditional-resources-broken) |
| 20 | medium | plan | 25 min | Practice decoding JSON and CSV input files, shaping them in locals, and creating resources from stable keyed data. | [labs/20-external-data-shaping-broken](labs/20-external-data-shaping-broken) |
| 21 | medium | plan | 20 min | Practice using dynamic nested blocks for repeated resource arguments and avoid brittle static duplication. | [labs/21-dynamic-block-broken](labs/21-dynamic-block-broken) |
| 22 | medium | plan | 20 min | Practice lifecycle replacement strategy and when create_before_destroy is required to avoid downtime during replacement. | [labs/22-create-before-destroy-broken](labs/22-create-before-destroy-broken) |
| 23 | medium | plan | 20 min | Practice using ignore_changes for attributes owned by external systems while preserving Terraform intent for managed fields. | [labs/23-ignore-changes-broken](labs/23-ignore-changes-broken) |
| 24 | medium | plan | 20 min | Practice correctly marking sensitive inputs and outputs, understanding redaction behavior, and avoiding accidental secret exposure. | [labs/24-sensitive-outputs-broken](labs/24-sensitive-outputs-broken) |
| 27 | medium | plan | 25 min | Practice flattening nested structures and merging tags into stable maps suitable for for_each-driven resource creation. | [labs/27-flatten-collection-broken](labs/27-flatten-collection-broken) |
| 30 | medium | plan | 20 min | Practice regex-driven naming validation and normalization for predictable resource naming standards. | [labs/30-regex-naming-broken](labs/30-regex-naming-broken) |
| 32 | medium | plan | 20 min | Practice forcing safe replacement when upstream dependency changes are not automatically represented as direct argument drift. | [labs/32-replace-triggered-by-broken](labs/32-replace-triggered-by-broken) |

### AWS wiring

| Lab | Difficulty | Success mode | Time | Focus | Folder |
|---|---|---|---|---|---|
| 08 | medium | plan | 20 min | Practice building the IAM chain correctly and attaching it to an EC2 instance. | [labs/08-iam-ec2-broken](labs/08-iam-ec2-broken) |
| 09 | easy | plan | 15 min | Practice the recommended AWS provider pattern of using separate security group rule resources instead of inline rules. | [labs/09-security-group-rules-broken](labs/09-security-group-rules-broken) |
| 15 | medium | plan | 20 min | Practice a common AWS Terraform pattern: S3 buckets with conditional versioning, lifecycle rules, and consistent tags. | [labs/15-s3-versioning-lifecycle-tags-broken](labs/15-s3-versioning-lifecycle-tags-broken) |

### Operations and state

| Lab | Difficulty | Success mode | Time | Focus | Folder |
|---|---|---|---|---|---|
| 03 | hard | plan | 30 min | Practice bringing existing infrastructure under Terraform management and refactoring it safely. | [labs/03-state-import-moved-broken](labs/03-state-import-moved-broken) |
| 04 | medium | plan | 25 min | Practice backend fundamentals and safe cross-stack data sharing. | [labs/04-remote-state-backend-broken](labs/04-remote-state-backend-broken) |
| 05 | medium | plan | 25 min | Practice separating environments with Terraform workspaces and consuming upstream outputs safely. | [labs/05-workspaces-cross-stack-broken](labs/05-workspaces-cross-stack-broken) |
| 06 | medium | plan | 25 min | Practice provider requirements, multi-region aliasing, and provider troubleshooting. | [labs/06-providers-alias-auth-broken](labs/06-providers-alias-auth-broken) |
| 11 | hard | plan | 30 min | Practice bringing existing infrastructure under Terraform management and refactoring it safely without unnecessary recreation. | [labs/11-import-moved-refactor-broken](labs/11-import-moved-refactor-broken) |
| 12 | medium | plan | 25 min | Practice backend limitations, remote state consumption, and the separation between producer and consumer configurations. | [labs/12-remote-state-backend-rules-broken](labs/12-remote-state-backend-rules-broken) |
| 13 | medium | plan | 25 min | Practice using terraform.workspace for environment-aware behavior and adding guardrails for higher-risk environments. | [labs/13-workspaces-guardrails-broken](labs/13-workspaces-guardrails-broken) |
| 14 | medium | plan | 25 min | Practice configuring aliased providers in the root module and passing them correctly into child modules. | [labs/14-provider-alias-modules-broken](labs/14-provider-alias-modules-broken) |
| 17 | medium | plan | 20 min | Practice using data sources for lookups and reasoning about values produced outside the current configuration. | [labs/17-data-sources-cross-stack-broken](labs/17-data-sources-cross-stack-broken) |
| 19 | hard | plan | 30 min | Practice refactoring from count-based resources to stable for_each keys without unintended recreation. | [labs/19-count-to-foreach-refactor-broken](labs/19-count-to-foreach-refactor-broken) |
| 25 | hard | conceptual | 30 min | Practice conceptual operations topics including VCS-driven workflows, run triggers, policy checks, cost estimation, team permissions, and API-driven runs. | [labs/25-hcp-terraform-ops-broken](labs/25-hcp-terraform-ops-broken) |
| 26 | medium | plan | 20 min | Practice state-preserving refactors using moved and removed blocks so Terraform does not destroy infrastructure unexpectedly. | [labs/26-removed-blocks-broken](labs/26-removed-blocks-broken) |
| 28 | medium | validate | 15 min | Practice selecting safe provider version constraints and understanding constraint semantics used in Terraform Professional scenarios. | [labs/28-provider-version-constraints-broken](labs/28-provider-version-constraints-broken) |
| 31 | medium | conceptual | 20 min | Practice splitting backend settings between static Terraform config and environment-specific backend.hcl values passed at init time. | [labs/31-partial-backend-config-broken](labs/31-partial-backend-config-broken) |

### Quality

| Lab | Difficulty | Success mode | Time | Focus | Folder |
|---|---|---|---|---|---|
| 07 | medium | test | 20 min | Practice variable validation, preconditions, check blocks, and basic Terraform test-driven verification. | [labs/07-validation-checks-tests-broken](labs/07-validation-checks-tests-broken) |
| 29 | hard | test | 30 min | Practice deeper terraform test patterns including multi-run setup/teardown and richer assert coverage. | [labs/29-terraform-test-depth-broken](labs/29-terraform-test-depth-broken) |

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
- The repository is intentionally minimal so you can focus on the Terraform itself.

## Maintained by

This catalog is generated and maintained from a private factory repository.
