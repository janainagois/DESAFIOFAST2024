resource "google_compute_instance" "app_instance" {
  provider = google
  count    = 3
  name     = "swarm-node-${count.index}"
  machine_type = var.google_instance_type
  zone     = var.google_zone
  metadata = {
    ssh-keys = "ansible:${var.ssh_public_key}"
  }
  boot_disk {
    initialize_params {
      image = var.google_instance_image
    }
  }

  network_interface {
    network = var.google_network
    access_config {}
  }

  tags = ["swarm-node"]

  service_account {
    scopes = ["cloud-platform"]
  }

  provisioner "remote-exec" {
    inline = ["sudo apt update", "sudo apt install python3 -y", "echo Done!"]

    connection {
      host        = self.network_interface[0].access_config[0].nat_ip
      type        = "ssh"
      user        = "ansible"
      private_key = file(var.ssh_path_private_key)
    }
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ansible -i '${self.network_interface[0].access_config[0].nat_ip},' --private-key ${var.ssh_path_private_key} -e 'pub_key=${var.ssh_key_path_default_user}' -e 'is_manager=${count.index == 0}' ../ansible/playbooks/inventory/install_docker.yml"
  }
}

resource "google_service_account" "app_instance" {
  account_id   = "swarm-service-account"
  display_name = "Service Account for Swarm"
 
}

output "instance_ip" {
  value = {
    for instance in google_compute_instance.app_instance:
    instance.name => instance.network_interface[0].access_config[0].nat_ip
  }

  
}
resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = "default" 

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  target_tags = ["swarm-node"] 
  direction   = "INGRESS"
  source_ranges = ["0.0.0.0/0"] 
}
