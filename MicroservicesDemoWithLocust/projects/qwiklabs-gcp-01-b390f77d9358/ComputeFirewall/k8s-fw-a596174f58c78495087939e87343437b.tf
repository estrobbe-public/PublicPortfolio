resource "google_compute_firewall" "k8s_fw_a596174f58c78495087939e87343437b" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"default/loadgenerator-external\", \"kubernetes.io/service-ip\":\"35.247.7.28\"}"
  destination_ranges = ["35.247.7.28"]
  direction          = "INGRESS"
  name               = "k8s-fw-a596174f58c78495087939e87343437b"
  network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority           = 1000
  project            = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.k8s_fw_a596174f58c78495087939e87343437b projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/k8s-fw-a596174f58c78495087939e87343437b
