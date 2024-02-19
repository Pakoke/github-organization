resource "github_team_repository" "repo_relationship" {
    for_each = { for x in flatten([
        for repo in var.repo_structure: [
            for team in repo.teams: {
                name = "${repo.repo_name}-${team.team_name}-${team.permissions}"
                team_name = "${team.team_name}"
                team_permissions = "${team.permissions}"
                repo_name = "${repo.repo_name}"
            }
        ]
    ]) : "${x.name}" => x }

    team_id    = each.value.team_name
    repository = each.value.repo_name
    permission = each.value.team_permissions
}