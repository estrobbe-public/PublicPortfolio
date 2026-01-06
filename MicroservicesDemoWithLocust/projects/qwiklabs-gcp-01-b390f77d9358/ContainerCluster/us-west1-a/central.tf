resource "google_container_cluster" "central" {
  addons_config {
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    network_policy_config {
      disabled = true
    }
  }

  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
  }

  cluster_ipv4_cidr = "10.96.0.0/14"

  cluster_telemetry {
    type = "ENABLED"
  }

  control_plane_endpoints_config {
    ip_endpoints_config {
      enabled = true
    }
  }

  database_encryption {
    state = "DECRYPTED"
  }

  default_max_pods_per_node = 110
  enable_shielded_nodes     = true

  ip_allocation_policy {
    cluster_ipv4_cidr_block      = "10.96.0.0/14"
    cluster_secondary_range_name = "gke-central-pods-d73ba8af"

    pod_cidr_overprovision_config {
      disabled = false
    }

    services_ipv4_cidr_block = "34.118.224.0/20"
    stack_type               = "IPV4"
  }

  location = "us-west1-a"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  monitoring_config {
    advanced_datapath_observability_config {
      enable_metrics = false
    }

    enable_components = ["SYSTEM_COMPONENTS", "POD", "DAEMONSET", "DEPLOYMENT", "STATEFULSET", "JOBSET", "STORAGE", "HPA", "KUBELET", "CADVISOR", "DCGM"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "central"
  network = "projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

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

  node_pool_defaults {
    node_config_defaults {
      logging_variant = "DEFAULT"
    }
  }

  node_version = "1.33.5-gke.1308000"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  private_cluster_config {
    master_global_access_config {
      enabled = false
    }
  }

  project = "qwiklabs-gcp-01-b390f77d9358"

  protect_config {
    workload_config {
      audit_mode = "BASIC"
    }

    workload_vulnerability_mode = "WORKLOAD_VULNERABILITY_MODE_UNSPECIFIED"
  }

  release_channel {
    channel = "REGULAR"
  }

  resource_labels = {
    managed-by-cnrm = "true"
  }

  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_MODE_UNSPECIFIED"
  }

  service_external_ips_config {
    enabled = false
  }

  subnetwork = "projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/subnetworks/default"
}
# terraform import google_container_cluster.central qwiklabs-gcp-01-b390f77d9358/us-west1-a/central
