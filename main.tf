terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = "DavidMT7"
}

resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = var.repository_visibility
  auto_init   = true
}

resource "github_branch" "development" {
  repository    = github_repository.repo.name
  branch        = "development"
  source_branch = "main"
}

resource "github_branch" "feature_1" {
  repository    = github_repository.repo.name
  branch        = "feature_1"
  source_branch = "main"
}

resource "github_branch" "feature_2" {
  repository    = github_repository.repo.name
  branch        = "feature_2"
  source_branch = "main"
}

resource "github_branch" "feature_3" {
  repository    = github_repository.repo.name
  branch        = "feature_3"
  source_branch = "main"
}
