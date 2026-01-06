resource "google_compute_instance" "bulk_export_vm" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-12-bookworm-v20251209"
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/disks/bulk-export-vm"
  }

  labels = {
    managed-by-cnrm = "true"
  }

  machine_type = "e2-micro"

  metadata = {
    startup-script = "#! /bin/bash\nset -e\n\necho \"===== STARTUP SCRIPT BEGIN =====\"\n\n# Detect project ID\nPROJECT_ID=\"$(curl -H Metadata-Flavor:Google http://metadata.google.internal/computeMetadata/v1/project/project-id)\"\nexport GOOGLE_CLOUD_PROJECT=\"$PROJECT_ID\"\n\necho \"Project ID: $PROJECT_ID\"\n\n# Install tools needed\napt-get update -y\napt-get install -y google-cloud-sdk zip google-cloud-cli-config-connector\n\n# Enable Cloud Asset API (safe if enabled already)\ngcloud services enable cloudasset.googleapis.com --project=\"$PROJECT_ID\"\n\n# Create output directory\nmkdir -p /export-output\n\necho \"===== STARTUP SCRIPT COMPLETE =====\"\n"
  }

  name = "bulk-export-vm"

  network_interface {
    access_config {
      nat_ip       = "34.22.235.200"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
    network_ip         = "10.132.0.18"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/regions/europe-west1/subnetworks/default"
    subnetwork_project = "qwiklabs-gcp-02-4cd235752cc4"
  }

  project = "qwiklabs-gcp-02-4cd235752cc4"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "279171147660-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  zone = "europe-west1-b"
}
# terraform import google_compute_instance.bulk_export_vm projects/qwiklabs-gcp-02-4cd235752cc4/zones/europe-west1-b/instances/bulk-export-vm
