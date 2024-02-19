# Add a team to the organization
resource "github_team" "teams" {
    for_each = { for x in flatten([
        for github_team in var.teams_structure : github_team
    ]) : "${x.team_name}" => x}
    name        = each.value.team_name
    description = each.value.description
    privacy     = "closed"
}
