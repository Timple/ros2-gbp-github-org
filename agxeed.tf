locals {
  agxeed_team = [
    "reinzor",
  ]
  agxeed_repositories = [
    "azure_iot_sdk_c-release",
  ]
}

module "agxeed_team" {
  source       = "./modules/release_team"
  team_name    = "agxeed"
  members      = local.agxeed_team
  repositories = local.agxeed_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}
