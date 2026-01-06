resource "google_compute_firewall" "gke_central_d73ba8af_inkubelet" {
  allow {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-central-d73ba8af-inkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority      = 999
  project       = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges = ["10.96.0.0/14"]
  source_tags   = ["gke-central-d73ba8af-node"]
  target_tags   = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.gke_central_d73ba8af_inkubelet projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/gke-central-d73ba8af-inkubelet
