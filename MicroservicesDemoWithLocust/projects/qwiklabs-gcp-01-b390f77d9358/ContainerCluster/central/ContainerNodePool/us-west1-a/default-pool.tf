resource "google_container_node_pool" "default_pool" {
  autoscaling {
    location_policy = "BALANCED"
    max_node_count  = 6
    min_node_count  = 4
  }

  cluster            = "central"
  initial_node_count = 4
  location           = "us-west1-a"

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  max_pods_per_node = 110
  name              = "default-pool"

  network_config {
    pod_ipv4_cidr_block = "10.96.0.0/14"
    pod_range           = "gke-central-pods-d73ba8af"
  }

  node_config {
    disk_size_gb    = 100
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    logging_variant = "DEFAULT"
    machine_type    = "e2-standard-2"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]

    resource_labels = {
      goog-gke-node-pool-provisioning-model = "on-demand"
    }

    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }
  }

  node_count     = 4
  node_locations = ["us-west1-a"]
  project        = "qwiklabs-gcp-01-b390f77d9358"

  upgrade_settings {
    max_surge = 1
    strategy  = "SURGE"
  }

  version = "1.33.5-gke.1308000"
}
# terraform import google_container_node_pool.default_pool qwiklabs-gcp-01-b390f77d9358/us-west1-a/central/default-pool
