terraform {
  required_version = ">= 0.11.7"
}

######
# Repo
######
resource "github_repository" "repo" {
  name               = "${var.repo_name}"
  description        = "${var.repo_description}"
  homepage_url       = "${var.repo_homepage_url}"
  private            = "${var.repo_private}"
  has_issues         = "${var.repo_has_issues}"
  has_projects       = "${var.repo_has_projects}"
  has_wiki           = "${var.repo_has_wiki}"
  allow_merge_commit = "${var.repo_allow_merge_commit}"
  allow_squash_merge = "${var.repo_allow_squash_merge}"
  allow_rebase_merge = "${var.repo_allow_rebase_merge}"
  has_downloads      = "${var.repo_has_downloads}"
  auto_init          = "${var.repo_auto_init}"
  gitignore_template = "${var.repo_gitignore_template}"
  license_template   = "${var.repo_license_template}"
  archived           = "${var.repo_archived}"
}

############
# Admin Team
############
resource "github_team" "admin_team" {
    count = "${var.admin_team ? 1 : 0}"

  name        = "${var.repo_name}-admins"
  description = "Members of this team have admin access for ${var.repo_name}"
  privacy     = "closed"
}

resource "github_team_repository" "admin_team" {
  team_id    = "${github_team.admin_team.id}"
  repository = "${github_repository.repo.name}"
  permission = "admin"
}

############
# Write Team
############
resource "github_team" "write_team" {
      count = "${var.write_team ? 1 : 0}"

  name        = "${var.repo_name}-writers"
  description = "Members of this team have push access for ${var.repo_name}"
  privacy     = "closed"
}

resource "github_team_repository" "write_team" {
  team_id    = "${github_team.write_team.id}"
  repository = "${github_repository.repo.name}"
  permission = "push"
}

###########
# Read Team
###########
resource "github_team" "read_team" {
  count = "${var.read_team ? 1 : 0}"

  name        = "${var.repo_name}-readers"
  description = "Members of this team have pull access for ${var.repo_name}"
  privacy     = "closed"
}

resource "github_team_repository" "read_team" {
  team_id    = "${github_team.read_team.id}"
  repository = "${github_repository.repo.name}"
  permission = "pull"
}
