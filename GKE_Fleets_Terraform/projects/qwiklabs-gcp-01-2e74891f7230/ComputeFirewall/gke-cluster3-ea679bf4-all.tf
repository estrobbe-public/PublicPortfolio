resource "google_compute_firewall" "gke_cluster3_ea679bf4_all" {
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
  name          = "gke-cluster3-ea679bf4-all"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.32.0.0/14"]
  target_tags   = ["gke-cluster3-ea679bf4-node"]
}
# terraform import google_compute_firewall.gke_cluster3_ea679bf4_all projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster3-ea679bf4-all
