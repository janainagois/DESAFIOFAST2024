terraform {
    
    required_version = "1.9.8"


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
    bucket  = var.bucket_tfsatefile_name
    prefix  = "terraform/state"
    }
    
}
