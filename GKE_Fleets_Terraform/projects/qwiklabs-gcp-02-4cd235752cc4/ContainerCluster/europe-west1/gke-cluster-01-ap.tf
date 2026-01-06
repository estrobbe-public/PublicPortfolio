resource "google_container_cluster" "gke_cluster_01_ap" {
  addons_config {
    dns_cache_config {
      enabled = true
    }

    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    gcp_filestore_csi_driver_config {
      enabled = true
    }

    gcs_fuse_csi_driver_config {
      enabled = true
    }

    network_policy_config {
      disabled = true
    }
  }

  cluster_autoscaling {
    auto_provisioning_defaults {
      disk_size  = 0
      image_type = "COS_CONTAINERD"

      management {
        auto_repair  = true
        auto_upgrade = true
      }

      oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      service_account = "default"

      upgrade_settings {
        max_surge = 1
        strategy  = "SURGE"
      }
    }

    autoscaling_profile = "OPTIMIZE_UTILIZATION"
    enabled             = true

    resource_limits {
      maximum       = 1000000000
      resource_type = "cpu"
    }

    resource_limits {
      maximum       = 1000000000
      resource_type = "memory"
    }

    resource_limits {
      maximum       = 1000000000
      resource_type = "nvidia-tesla-t4"
    }

    resource_limits {
      maximum       = 1000000000
      resource_type = "nvidia-tesla-a100"
    }
  }

  cluster_ipv4_cidr = "10.62.0.0/17"

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

  datapath_provider         = "ADVANCED_DATAPATH"
  default_max_pods_per_node = 110

  dns_config {
    cluster_dns        = "CLOUD_DNS"
    cluster_dns_domain = "cluster.local"
    cluster_dns_scope  = "CLUSTER_SCOPE"
  }

  enable_autopilot            = true
  enable_intranode_visibility = true
  enable_shielded_nodes       = true

  gateway_api_config {
    channel = "CHANNEL_STANDARD"
  }

  ip_allocation_policy {
    cluster_ipv4_cidr_block      = "10.62.0.0/17"
    cluster_secondary_range_name = "gke-gke-cluster-01-ap-pods-2deca5d0"

    pod_cidr_overprovision_config {
      disabled = false
    }

    services_ipv4_cidr_block = "34.118.224.0/20"
    stack_type               = "IPV4"
  }

  location = "europe-west1"

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
      enable_metrics = true
    }

    enable_components = ["SYSTEM_COMPONENTS", "STORAGE", "HPA", "POD", "DAEMONSET", "DEPLOYMENT", "STATEFULSET", "JOBSET", "CADVISOR", "KUBELET", "DCGM"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "gke-cluster-01-ap"
  network = "projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

  node_config {
    disk_size_gb = 100
    disk_type    = "pd-balanced"

    gvnic {
      enabled = true
    }

    image_type      = "COS_CONTAINERD"
    logging_variant = "DEFAULT"
    machine_type    = "ek-standard-8"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]

    reservation_affinity {
      consume_reservation_type = "NO_RESERVATION"
    }

    resource_labels = {
      goog-gke-node-pool-provisioning-model = "on-demand"
    }

    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
      enable_secure_boot          = true
    }

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_locations = ["europe-west1-b", "europe-west1-c", "europe-west1-d"]

  node_pool_defaults {
    node_config_defaults {
      gcfs_config {
        enabled = true
      }

      logging_variant = "DEFAULT"
    }
  }

  node_version = "1.34.1-gke.3355002"

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

  project = "qwiklabs-gcp-02-4cd235752cc4"

  protect_config {
    workload_config {
      audit_mode = "BASIC"
    }

    workload_vulnerability_mode = "WORKLOAD_VULNERABILITY_MODE_UNSPECIFIED"
  }

  release_channel {
    channel = "RAPID"
  }

  resource_labels = {
    managed-by-cnrm = "true"
    mesh_id         = "proj-279171147660"
  }

  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_MODE_UNSPECIFIED"
  }

  service_external_ips_config {
    enabled = false
  }

  subnetwork = "projects/qwiklabs-gcp-02-4cd235752cc4/regions/europe-west1/subnetworks/default"

  vertical_pod_autoscaling {
    enabled = true
  }

  workload_identity_config {
    workload_pool = "qwiklabs-gcp-02-4cd235752cc4.svc.id.goog"
  }
}
# terraform import google_container_cluster.gke_cluster_01_ap qwiklabs-gcp-02-4cd235752cc4/europe-west1/gke-cluster-01-ap
