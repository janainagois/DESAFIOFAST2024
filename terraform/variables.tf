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
  default     = "~/.ssh/nome_da_chave.pub"
}

variable "ssh_path_private_key" {
  description = "Path SSH Private Key"
  type        = string
  default     = "~/.ssh/nome_da_chave"
}

variable "GOOGLE_CREDENTIALS" {
  type = string
  default = "credential.json"
}

variable "bucket_tfsatefile_name" {
  description = "Name of the Bucket to save Statefile"
  type        = string
  default     = "bucket-statefile-fast2024"
}

variable "storage_class" {
  description = "Name of the Bucket to save Statefile"
  type        = string
  default     = "standard"
}