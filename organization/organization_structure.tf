locals {
    user_structure = [
        {
            username = "Ruiz"
            role     = "member"
        },
        {
            username = "FranciscoJavier"
            role     = "member"
        }
    ]
    team_structure = [
        {
            team_name = "frontend-team"
            description = "Cool frontend Team"
            users = [{
                user_name = "Ruiz",
                role     = "member"
            }]
        },
        {
            team_name = "backend-team"
            description = "Cool frontend Team"
            users = [{
                user_name = "FranciscoJavier",
                role     = "member"
            }]
        }
    ]
    repo_structure = [
    {
        repo_name = "voxsmart-service-api"
        description = "This is an awesome api"
        visibility = "private"
        repo_options = {
            has_issues = true
            has_discussions = true
            has_projects = true
            has_wiki = true
        }
        teams = [
            {
                team_name = "backend-team",
                permissions = "admin"
            },
            {
                team_name = "backend-team",
                permissions = "pull"
            }
        ]
    },
    {
        repo_name = "voxsmart-service-ui"
        description = "This is an awesome UI App"
        visibility = "private"
        repo_options = {
            has_issues = true
            has_discussions = true
            has_projects = true
            has_wiki = true
        }
        teams = [
            {
                team_name = "frontend-team",
                permissions = "admin"
            }
        ]
    },
    {
        repo_name = "voxsmart-service-sdk"
        description = "This is an awesome SDK library"
        visibility = "public"
        repo_options = {
            has_issues = true
            has_discussions = true
            has_projects = true
            has_wiki = true
        }
        teams = [
            {
                team_name = "backend-team",
                permissions = "push"
            },
            {
                team_name = "frontend-team",
                permissions = "push"
            }
        ]
    }
    ]
}