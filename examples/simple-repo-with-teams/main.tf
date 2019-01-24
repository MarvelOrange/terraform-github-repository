#######################
# GitHub Provider Setup
#######################
provider "github" {}

#############################
# Example Repo with all teams
#############################
module "test_repo" {
  source = "../../"

  repo_name        = "testing-repo"
  repo_description = "Hello testing repo"

  admin_team = true
  write_team = true
  read_team  = true
}
