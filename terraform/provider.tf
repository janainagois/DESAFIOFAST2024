provider "google" {
  credentials = file("terraform/credential.json")
  project     = var.my_first_project
  region      = var.google_region
  zone        = var.google_zone
}