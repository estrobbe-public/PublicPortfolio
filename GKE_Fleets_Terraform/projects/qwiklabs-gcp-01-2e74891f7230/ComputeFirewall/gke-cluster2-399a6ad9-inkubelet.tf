resource "google_compute_firewall" "gke_cluster2_399a6ad9_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-cluster2-399a6ad9-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 999
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.24.0.0/14"]
  source_tags   = ["gke-cluster2-399a6ad9-node"]
  target_tags   = ["gke-cluster2-399a6ad9-node"]
}
# terraform import google_compute_firewall.gke_cluster2_399a6ad9_inkubelet projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster2-399a6ad9-inkubelet
