resource "google_compute_firewall" "default_allow_internal" {
  allow {
    ports    = ["0-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["0-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  description   = "Allow internal traffic on the default network"
  direction     = "INGRESS"
  name          = "default-allow-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-2342d4fc79d9/global/networks/default"
  priority      = 65534
  project       = "qwiklabs-gcp-04-2342d4fc79d9"
  source_ranges = ["10.128.0.0/9"]
}
# terraform import google_compute_firewall.default_allow_internal projects/qwiklabs-gcp-04-2342d4fc79d9/global/firewalls/default-allow-internal
