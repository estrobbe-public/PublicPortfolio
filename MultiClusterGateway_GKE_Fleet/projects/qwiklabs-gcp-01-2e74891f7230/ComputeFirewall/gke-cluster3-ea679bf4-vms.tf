resource "google_compute_firewall" "gke_cluster3_ea679bf4_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  name          = "gke-cluster3-ea679bf4-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-cluster3-ea679bf4-node"]
}
# terraform import google_compute_firewall.gke_cluster3_ea679bf4_vms projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster3-ea679bf4-vms
