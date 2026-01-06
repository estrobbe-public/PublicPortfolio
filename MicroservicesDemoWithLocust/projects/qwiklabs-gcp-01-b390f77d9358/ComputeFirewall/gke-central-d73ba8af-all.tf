resource "google_compute_firewall" "gke_central_d73ba8af_all" {
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
  name          = "gke-central-d73ba8af-all"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges = ["10.96.0.0/14"]
  target_tags   = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.gke_central_d73ba8af_all projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/gke-central-d73ba8af-all
