provider "google" {
  credentials = file("/tmp/google-credentials.json")
  project     = var.my_first_project
  region      = var.google_region
  zone        = var.google_zone
}