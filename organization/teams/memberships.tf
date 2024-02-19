resource "github_team_membership" "memberships" {
    for_each = { for x in flatten([
        for team in var.teams_structure: [
            for user in team.users: {
                name = "${team.team_name}-${user.user_name}"
                team_name = "${team.team_name}"
                user_name = "${user.user_name}"
                user_role = "${user.role}"
            }
        ]
    ]) : "${x.name}" => x }

    team_id  = each.value.team_name
    username = each.value.user_name
    role     = each.value.user_role
}