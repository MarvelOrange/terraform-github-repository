######
# Repo
######
output "repo_name" {
  value = "${github_repository.repo.full_name}"
  description = "A string of the form 'orgname/reponame'"
}

output "repo_ssh_clone_url" {
  value = "${github_repository.repo.ssh_clone_url}"
  description = "URL that can be provided to git clone to clone the repository via SSH"
}

output "repo_https_clone_url" {
  value = "${github_repository.repo.http_clone_url}"
  description = "URL that can be provided to git clone to clone the repository via HTTPS"
}

output "repo_https_url" {
  value = "${github_repository.repo.html_url}"
  description = "URL to the repository on the web"
}

######
# Team
######
output "admin_team_id" {
  value = "${github_team.admin_team.0.id}"
  description = "Admins team id"
}

output "write_team_id" {
  value = "${github_team.write_team.0.id}"
  description = "Writers team id"
}

output "read_team_id" {
  value = "${github_team.read_team.0.id}"
  description = "Readers team id"
}
