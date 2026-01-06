resource "google_compute_firewall" "gke_cluster2_399a6ad9_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-cluster2-399a6ad9-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-cluster2-399a6ad9-node"]
}
# terraform import google_compute_firewall.gke_cluster2_399a6ad9_exkubelet projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster2-399a6ad9-exkubelet
