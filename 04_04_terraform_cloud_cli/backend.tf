terraform {
  backend "remote" {
    organization = "infotitans"

    workspaces {
      name = "cli-workspace"
    }
  }
}
