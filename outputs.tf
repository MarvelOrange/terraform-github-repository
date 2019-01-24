######
# Repo
######
output "repo_name" {
  value = "${github_repository.repo.full_name}"
}

output "repo_ssh_clone_url" {
  value = "${github_repository.repo.ssh_clone_url}"
}

output "repo_http_clone_url" {
  value = "${github_repository.repo.http_clone_url}"
}


