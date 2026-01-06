resource "google_compute_firewall" "gke_cluster1_42c4ea4b_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-cluster1-42c4ea4b-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 999
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.88.0.0/14"]
  source_tags   = ["gke-cluster1-42c4ea4b-node"]
  target_tags   = ["gke-cluster1-42c4ea4b-node"]
}
# terraform import google_compute_firewall.gke_cluster1_42c4ea4b_inkubelet projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster1-42c4ea4b-inkubelet
