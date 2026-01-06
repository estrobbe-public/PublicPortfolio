resource "google_compute_firewall" "gkemcg1_l7_default_global" {
  allow {
    ports    = ["0-65535"]
    protocol = "tcp"
  }

  description   = "Ingress L7 firewall rule"
  direction     = "INGRESS"
  name          = "gkemcg1-l7-default-global"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/networks/default"
  priority      = 1000
  project       = "qwiklabs-gcp-01-2e74891f7230"
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
}
# terraform import google_compute_firewall.gkemcg1_l7_default_global projects/qwiklabs-gcp-01-2e74891f7230/global/firewalls/gkemcg1-l7-default-global
