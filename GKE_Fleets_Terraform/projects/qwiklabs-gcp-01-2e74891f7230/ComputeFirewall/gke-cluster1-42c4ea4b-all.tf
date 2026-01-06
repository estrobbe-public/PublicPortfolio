resource "google_compute_firewall" "gke_cluster1_42c4ea4b_all" {
  allow {
    protocol = "ah"
  }

  allow {
    protocol = "esp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "sctp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  direction     = "INGRESS"
  name          = "gke-cluster1-42c4ea4b-all"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.88.0.0/14"]
  target_tags   = ["gke-cluster1-42c4ea4b-node"]
}
# terraform import google_compute_firewall.gke_cluster1_42c4ea4b_all projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster1-42c4ea4b-all
