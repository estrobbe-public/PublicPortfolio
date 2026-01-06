resource "google_compute_firewall" "default_allow_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  name          = "default-allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority      = 65534
  project       = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.default_allow_ssh projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/default-allow-ssh
