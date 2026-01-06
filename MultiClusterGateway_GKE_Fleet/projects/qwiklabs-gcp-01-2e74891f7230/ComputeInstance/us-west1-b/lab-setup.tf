resource "google_compute_instance" "lab_setup" {
  boot_disk {
    auto_delete = true
    device_name = "lab-setup"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20251209"
      size  = 100
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/disks/lab-setup"
  }

  labels = {
    managed-by-cnrm = "true"
  }

  machine_type = "e2-micro"

  metadata = {
    foo            = "bar"
    startup-script = "echo Welcome to Project Octopus > /tmp/octopus.txt"
  }

  name = "lab-setup"

  network_interface {
    access_config {
      nat_ip       = "34.169.182.156"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
    network_ip         = "10.138.0.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/regions/us-west1/subnetworks/default"
    subnetwork_project = "qwiklabs-gcp-01-2e74891f7230"
  }

  project = "qwiklabs-gcp-01-2e74891f7230"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "268855880648-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["lab-setup"]
  zone = "us-west1-b"
}
# terraform import google_compute_instance.lab_setup projects/qwiklabs-gcp-01-2e74891f7230/zones/us-west1-b/instances/lab-setup
