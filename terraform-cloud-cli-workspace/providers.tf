terraform {
  cloud {
    organization = "" // mention organization name

    workspaces {
      name = "" // mention workspace name
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
