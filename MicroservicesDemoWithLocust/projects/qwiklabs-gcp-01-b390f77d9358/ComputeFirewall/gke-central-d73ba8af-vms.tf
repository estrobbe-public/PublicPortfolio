resource "google_compute_firewall" "gke_central_d73ba8af_vms" {
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
  name          = "gke-central-d73ba8af-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges = ["10.128.0.0/9"]
  target_tags   = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.gke_central_d73ba8af_vms projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/gke-central-d73ba8af-vms
