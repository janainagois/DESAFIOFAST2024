variable "google_region" {
  description = "Google Region"
  type        = string
  default     = "us-central1"
}

variable "google_zone" {
  description = "Google Zone"
  type        = string
  default     = "us-central1-a"
}

variable "my_first_project" {
    description = "My First Project"
    type        = string
    default     = "552704724947"
}

variable "google_instance_type" {
  description = "Google Instance Type"
  type        = string
  default     = "e2-standard-2"
  # default     = "e2-small"
}

variable "google_instance_image" {
  description = "Google Instance Image"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-jammy-v20240904"
}

variable "google_network" {
  description = "Google Network Name"
  type        = string
  default     = "default"
}

variable "ssh_key_path_default_user" {
  description = "Path SSH Key for Default User"
  type        = string
  default     = "../ssh_public_key.pub"
}

variable "ssh_path_private_key" {
  description = "Path SSH Private Key"
  type        = string
  default     = "../ssh_private_key.pem"
}

variable "ssh_private_key_secret" {
  description = "Chave privada SSH passada pelas secrets"
  type        = string
  default     = "" 
}