#######################
# GitHub Provider Setup
#######################
provider "github" {}

#############################
# Example Repo with all teams
#############################
module "test_repo" {
  source = "/Users/marvelorange/GIT/OCS/terraform-github-repository"

  repo_name        = "testing-repo"
  repo_description = "Hello testing repo"

  admin_team = true
  write_team = true
  read_team  = true
}

##################
# Add User to Team
##################
resource "github_team_membership" "test_admin_team" {
  team_id  = "${module.test_repo.admin_team_id}"
  username = "MarvelOrange"
  role     = "member"
}