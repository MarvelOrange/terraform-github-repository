# terraform-github-repository

Terraform module which create's a GitHub repository with associated teams.

The following GitHub resources could be created:

```sh
Repository
GitHub Team
GitHub Team Repoistory
```

## Terraform Version

Terraform version 0.11.7 or newer is required for this module to work.

## Examples

* [Simple Repo with Teams](https://github.com/MarvelOrange/terraform-github-repository/tree/master/examples/simple-repo-with-teams)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| admin_team | Enable creation of an admin team for the repoistory | string | `false` | no |
| read_team | Enable creation of an read (pull) team for the repoistory | string | `false` | no |
| repo_allow_merge_commit | Set to false to disable merge commits on the repository | string | `true` | no |
| repo_allow_rebase_merge | Set to false to disable rebase merges on the repository | string | `true` | no |
| repo_allow_squash_merge | Set to false to disable squash merges on the repository | string | `true` | no |
| repo_archived | Specifies if the repository should be archived | string | `false` | no |
| repo_auto_init | Meaningful only during create; set to true to produce an initial commit in the repository | string | `true` | no |
| repo_description | A description of the repository | string | - | yes |
| repo_gitignore_template | Meaningful only during create, will be ignored after repository creation. Use the name of the template without the extension - https://github.com/github/gitignore | string | `` | no |
| repo_has_downloads | Set to true to enable the (deprecated) downloads features on the repository | string | `false` | no |
| repo_has_issues | Set to true to enable the GitHub Issues features on the repository | string | `true` | no |
| repo_has_projects | Set to true to enable the GitHub Projects features on the repository | string | `false` | no |
| repo_has_wiki | Set to true to enable the GitHub Wiki features on the repository | string | `true` | no |
| repo_homepage_url | URL of a page describing the project. | string | `` | no |
| repo_license_template | Meaningful only during create, will be ignored after repository creation. Use the name of the template without the extension - https://github.com/github/choosealicense.com/tree/gh-pages/_licenses | string | `` | no |
| repo_name | The name of the repository | string | - | yes |
| repo_private | Set to true to create a private repository | string | `false` | no |
| write_team | Enable creation of an write (push) team for the repoistory | string | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| repo_https_clone_url | URL that can be provided to git clone to clone the repository via HTTPS |
| repo_https_url | URL to the repository on the web |
| repo_name | A string of the form 'orgname/reponame' |
| repo_ssh_clone_url | URL that can be provided to git clone to clone the repository via SSH |

## Authors

Module is maintained by [Ben Prudence](https://github.com/MarvelOrange).

## License

Apache 2 Licensed. See LICENSE for full details.