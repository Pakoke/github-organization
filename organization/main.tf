module "teams" {
  source          = "./teams"
  teams_structure = local.team_structure
  user_structure  = local.user_structure

  github_organization = var.github_organization
  github_token        = var.github_token
}

module "repositories" {
  source         = "./repositories"
  repo_structure = local.repo_structure

  github_organization = var.github_organization
  github_token        = var.github_token
}
