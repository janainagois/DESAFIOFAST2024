resource "google_storage_bucket" "raw" {
  project                     = var.my_first_project
  name                        = "${var.bucket_tfsatefile_name}-raw"
  force_destroy               = false
  location                    = var.google_region
  uniform_bucket_level_access = true
  storage_class               = var.storage_class
  labels = {
    environment = "production"
    team        = "devops"
  }
}