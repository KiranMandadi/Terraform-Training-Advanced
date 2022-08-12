terraform {
  cloud {
    organization = "KiranMandadi"

    workspaces {
      name = "CLI-Workspace"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}