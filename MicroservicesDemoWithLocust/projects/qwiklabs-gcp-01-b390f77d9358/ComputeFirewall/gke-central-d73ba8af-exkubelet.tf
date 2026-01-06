resource "google_compute_firewall" "gke_central_d73ba8af_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-central-d73ba8af-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.gke_central_d73ba8af_exkubelet projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/gke-central-d73ba8af-exkubelet
