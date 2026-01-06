resource "google_compute_firewall" "gke_cluster1_42c4ea4b_mcsd" {
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

  description   = "A managed firewall for multi-cluster pod and service ingress."
  direction     = "INGRESS"
  name          = "gke-cluster1-42c4ea4b-mcsd"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 900
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["10.24.0.0/14", "10.32.0.0/14", "10.88.0.0/14", "130.211.0.0/22", "35.191.0.0/16"]
  target_tags   = ["gke-cluster1-42c4ea4b-node"]
}
# terraform import google_compute_firewall.gke_cluster1_42c4ea4b_mcsd projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gke-cluster1-42c4ea4b-mcsd
