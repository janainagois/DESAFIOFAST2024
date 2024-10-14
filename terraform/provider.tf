provider "google" {
  credentials = file("./credential.json")
  project     = var.my_first_project
  region      = var.google_region
  zone        = var.google_zone
}