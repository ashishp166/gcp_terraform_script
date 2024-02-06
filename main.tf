terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "4.32.0"
        }
    }
}

provider "google" {
    credentials = file("cred.json")

    project = var.project_name
    region = "us-central1"
    zone = "us-central1-a"
}

resource "google_compute_instance" "default" {
    name = var.instance_name
    machine_type = var.machine_type
    zone = var.instance_zone

    boot_disk {
      initialize_params {
        image = var.gcp_boot_disk_image
        size = var.gcp_boot_disk_image_size
        type = var.gcp_boot_disk_image_type
      } 
    }

    // Specify the GPU configuration
    guest_accelerator {
        type  = var.gpu_type
        count = var.num_gpus
    }

    network_interface {
    network = "default"
    subnetwork = "default"

        access_config {
        // Ephemeral external IP
        }
    }
    scheduling {
        on_host_maintenance = "TERMINATE"
        automatic_restart   = false
        // Set automatic_restart to false if you want the instance not to be automatically restarted when it is terminated by GCP.
    }
}
