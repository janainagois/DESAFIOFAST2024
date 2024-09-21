resource "google_compute_instance" "app_instance" {
  provider = google
  name     = "swarm-node-${count.index}"
  machine_type = var.google_instance_type
  zone     = var.google_zone
  count    = 3

  boot_disk {
    initialize_params {
      image = var.google_instance_image
    }
  }

  network_interface {
    network = var.google_network
    access_config {}
  }

  metadata = {
    "startup-script" = <<-EOT
      #!/bin/bash
      apt-get update
      apt-get install -y docker.io
      systemctl start docker
      systemctl enable docker
      docker swarm init || true
    EOT
  }

  tags = ["swarm-node"]

  service_account {
    // Google recommends custom service accounts with cloud-platform scope
    email  = google_service_account.default.email // opcional
    scopes = ["cloud-platform"]
  }
}

resource "google_service_account" "default" {
  account_id   = "swarm-service-account"
  display_name = "Service Account for Swarm"
}

output "instance_ips" {
  value = google_compute_instance.app_instance.*.network_interface[0].access_config[0].nat_ip
}
