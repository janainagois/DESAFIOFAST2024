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
    default     = 552704724947
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
  default     = "centos-cloud/centos-stream-9"
}

variable "google_network" {
  description = "Google Network Name"
  type        = string
  default     = "default"
}

variable "ssh_key_path_default_user" {
  description = "Path SSH Key for Default User"
  type        = string
  default     = "~/.ssh/ecdsa_ansible.pub"
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