resource "github_repository" "repository" {
    for_each = { for x in flatten([
        for github_repository in var.repo_structure : github_repository
    ]) : "${x.repo_name}" => x}
    name        = each.value.repo_name
    description = each.value.description

    visibility = each.value.visibility

    has_issues      = each.value.repo_options.has_issues
    has_discussions = each.value.repo_options.has_discussions
    has_projects    = each.value.repo_options.has_projects
    has_wiki        = each.value.repo_options.has_wiki
}