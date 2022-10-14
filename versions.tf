terraform {
  cloud {
    organization = "sargassum-world"

    workspaces {
      name = "infra-fluitans-prod"
    }
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }
    desec = {
      source  = "Valodim/desec"
      version = "~> 0.3.0"
    }
    nomad = {
      source  = "hashicorp/nomad"
      version = "~> 1.4.18"
    }
  }
}
