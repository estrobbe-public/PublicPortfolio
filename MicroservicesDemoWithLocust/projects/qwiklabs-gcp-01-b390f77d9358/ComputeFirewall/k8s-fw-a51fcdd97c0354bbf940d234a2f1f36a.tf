resource "google_compute_firewall" "k8s_fw_a51fcdd97c0354bbf940d234a2f1f36a" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"default/frontend-external\", \"kubernetes.io/service-ip\":\"136.118.91.133\"}"
  destination_ranges = ["136.118.91.133"]
  direction          = "INGRESS"
  name               = "k8s-fw-a51fcdd97c0354bbf940d234a2f1f36a"
  network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority           = 1000
  project            = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.k8s_fw_a51fcdd97c0354bbf940d234a2f1f36a projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/k8s-fw-a51fcdd97c0354bbf940d234a2f1f36a
