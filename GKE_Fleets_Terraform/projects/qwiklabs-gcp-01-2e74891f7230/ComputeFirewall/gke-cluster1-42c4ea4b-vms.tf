resource "google_compute_firewall" "gke_cluster1_42c4ea4b_vms" {
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
  name          = "gke-cluster1-42c4ea4b-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-cluster1-42c4ea4b-node"]
}
# terraform import google_compute_firewall.gke_cluster1_42c4ea4b_vms projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster1-42c4ea4b-vms
