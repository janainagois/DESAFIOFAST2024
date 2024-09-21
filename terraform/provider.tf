provider "google" {
  credentials = file("wsl.localhost/Ubuntu-20.04/home/janainagois/Downloads/nifty-inn-432723-g9-7acf7f7c0e8c.json")  # Caminho para o arquivo JSON com as credenciais
  project     = var.my_first_project
  region      = var.google_region
  zone        = var.google_zone
}