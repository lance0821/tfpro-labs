variable "team_apps" {
  description = "Per-team app definitions that need flattening before iteration."
  type = map(object({
    apps = list(string)
    tags = map(string)
  }))

  default = {
    platform = {
      apps = ["api", "worker"]
      tags = {
        owner = "platform"
      }
    }
    payments = {
      apps = ["ledger"]
      tags = {
        owner = "payments"
      }
    }
  }
}

locals {
  global_tags = {
    managed_by = "terraform"
    lab        = "flatten-merge"
  }

  app_rows = flatten([
    for team, cfg in var.team_apps : [
      for app in cfg.apps : {
        key  = format("%s-%s", team, app)
        team = team
        app  = app
        tags = cfg.tags
      }
    ]
  ])

  app_map = {
    for row in local.app_rows : row.key => row
  }
}

resource "terraform_data" "app" {
  for_each = local.app_map

  input = {
    team = each.value.team
    app  = each.value.app
    tags = merge(local.global_tags, each.value.tags)
  }
}

output "app_keys" {
  value = keys(terraform_data.app)
}

output "app_tags" {
  value = {
    for k, v in terraform_data.app : k => v.output.tags
  }
}
