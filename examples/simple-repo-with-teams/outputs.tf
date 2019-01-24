######
# Repo
######
output "repository_name" {
  value = "${module.test_repo.repo_name}"
  description = "A string of the form 'orgname/reponame'"
}

output "ssh_clone_url" {
  value = "${module.test_repo.repo_ssh_clone_url}"
  description = "URL that can be provided to git clone to clone the repository via SSH"
}

output "https_clone_url" {
  value = "${module.test_repo.repo_https_clone_url}"
  description = "URL that can be provided to git clone to clone the repository via HTTPS"
}

output "https_url" {
  value = "${module.test_repo.repo_https_url}"
  description = "URL to the repository on the web"
}

######
# Team
######
output "admin_team" {
  value = "${module.test_repo.admin_team_id}"
  description = "Admins team id"
}

output "write_team" {
  value = "${module.test_repo.write_team_id}"
  description = "Writers team id"
}

output "read_team" {
  value = "${module.test_repo.read_team_id}"
  description = "Readers team id"
}
