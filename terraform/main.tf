terraform {
    required_Version = "1.9.5"
}

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.3.0"
    }
  }

backend "local {
    path = "terraform.tfstate"
}