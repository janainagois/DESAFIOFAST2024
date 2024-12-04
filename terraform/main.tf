terraform {
    
    required_version = ">= 1.10.0, < 2.0.0"


    required_providers {
        google = {
        source = "hashicorp/google"
        version = "6.3.0"
        }
    }

    #backend "local" {
    #    path = "terraform.tfstate"
    #}

    backend "gcs" {
    bucket  = "bucket-statefile-fast2024"
    prefix  = "terraform/state"
    }
    
}