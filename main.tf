terraform {
  required_providers {
    buildkite = {
      source = "buildkite/buildkite"
      version = "1.5.2"
    }
  }
}

locals {
  repository = "git@github.com:jeremybumsted/buildkite-sandbox.git"
}

provider "buildkite" {
    api_token = var.BUILDKITE_API_TOKEN
    organization = var.BUILDKITE_ORGANIZATION
}


