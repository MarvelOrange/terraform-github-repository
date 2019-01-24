#######################
# GitHub Provider Setup
#######################
provider "github" {}

#############################
# Example Repo with all teams
#############################
module "test_repo" {
  source  = "MarvelOrange/repository/github"
  version = "0.1.0"

  repo_name        = "testing-repo"
  repo_description = "Hello testing repo"

  admin_team = true
  write_team = true
  read_team  = true
}
