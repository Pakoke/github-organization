# Add an user to the organization
resource "github_membership" "user" {
    for_each = { for x in flatten([
        for github_user in var.user_structure : github_user
    ]) : "${x.username}" => x}
    username        = each.value.username
    role            = each.value.role
}
