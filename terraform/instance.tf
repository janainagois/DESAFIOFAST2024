# Recurso google_compute_instance

resource "google_compute_instance" "app_instance"{
    #resource_service_account
    provider = google # vai acessar meu provider.tf
    display_name = "Service Account for Swarm"

    name = "swarm-node-${count.index}"
    machine_type = var.machine_type
    zone = var.zone
    min_cpu_platform = ""
    #opcional 
    metadata= {
        ssh-keys = "ansible: ${file(var.ssh_key_path_default_user)}"
    }
}

boot_disk{
    initialize_params{
        image = var.google_instance_image
    }
}

network_interface{
    network = var.google_network
    access_config{}
}

metadata_startup_script = {
    // You can pass Docker installation commands or scripts here
    "startup-script" = <<-EOT
      #!/bin/bash
      apt-get update
      apt-get install -y docker.io
      systemctl start docker
      systemctl enable docker
      docker swarm init || true
      # Optionally join other nodes
    EOT
  }

tags = ["swarm-node"]


#documentação
service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #email  = google_service_account.default.email opcional
    scopes = ["cloud-platform"]
  }

#Opicional
#retorna o IP da instância
output "instance_ips" {
  value = google_compute_instance.swarm_node.*.network_interface[0].access_config[0].nat_ip
}