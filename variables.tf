########
# Gloabl
########

variable "repo_name" {
  description = "The name of the repository"
}

######
# Repo
######

variable "repo_description" {
  description = "A description of the repository"
}

variable "repo_homepage_url" {
  description = "URL of a page describing the project."
  default     = ""
}

variable "repo_private" {
  description = "Set to true to create a private repository"
  default     = false
}

variable "repo_has_issues" {
  description = "Set to true to enable the GitHub Issues features on the repository"
  default     = true
}

variable "repo_has_projects" {
  description = "Set to true to enable the GitHub Projects features on the repository"
  default     = false
}

variable "repo_has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository"
  default     = true
}

variable "repo_allow_merge_commit" {
  description = "Set to false to disable merge commits on the repository"
  default     = true
}

variable "repo_allow_squash_merge" {
  description = "Set to false to disable squash merges on the repository"
  default     = true
}

variable "repo_allow_rebase_merge" {
  description = "Set to false to disable rebase merges on the repository"
  default     = true
}

variable "repo_has_downloads" {
  description = "Set to true to enable the (deprecated) downloads features on the repository"
  default     = false
}

variable "repo_auto_init" {
  description = " Meaningful only during create; set to true to produce an initial commit in the repository"
  default     = true
}

variable "repo_gitignore_template" {
  description = "Meaningful only during create, will be ignored after repository creation. Use the name of the template without the extension - https://github.com/github/gitignore"
  default     = ""
}

variable "repo_license_template" {
  description = "Meaningful only during create, will be ignored after repository creation. Use the name of the template without the extension - https://github.com/github/choosealicense.com/tree/gh-pages/_licenses"
  default     = ""
}

variable "repo_archived" {
  description = "Specifies if the repository should be archived"
  default     = false
}

#######
# Teams
#######

variable "admin_team" {
  description = "Enable creation of an admin team for the repoistory"
  default     = false
}

variable "write_team" {
  description = "Enable creation of an write (push) team for the repoistory"
  default     = false
}

variable "read_team" {
  description = "Enable creation of an read (pull) team for the repoistory"
  default     = false
}
