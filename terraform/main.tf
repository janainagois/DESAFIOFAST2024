terraform {
    
    required_version = "1.9.7"


    required_providers {
        google = {
        source = "hashicorp/google"
        version = "6.3.0"
        }
    }

    backend "local" {
        path = "terraform.tfstate"
    }
    
}
