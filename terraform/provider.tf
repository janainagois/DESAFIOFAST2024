provider "google" {
  credentials = jsondecode(var.GOOGLE_CREDENTIALS)
  project     = var.my_first_project
  region      = var.google_region
  zone        = var.google_zone
}