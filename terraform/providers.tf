terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.29.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "claessensruben2812"

    workspaces {
      name = "homeserver"
    }
  }
}


provider "cloudflare" {
}

provider "random" {
}
