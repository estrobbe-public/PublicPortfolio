resource "google_compute_firewall" "k8s_fw_a9df51ab4b8ca44ef93150585e5c2b31" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/service-name\":\"gcc-dev-ns/frontend\", \"kubernetes.io/service-ip\":\"104.199.84.202\"}"
  destination_ranges = ["104.199.84.202"]
  direction          = "INGRESS"
  name               = "k8s-fw-a9df51ab4b8ca44ef93150585e5c2b31"
  network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority           = 1000
  project            = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges      = ["0.0.0.0/0"]
  target_tags        = ["gke-gke-cluster-01-ap-2deca5d0-node"]
}
# terraform import google_compute_firewall.k8s_fw_a9df51ab4b8ca44ef93150585e5c2b31 projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/k8s-fw-a9df51ab4b8ca44ef93150585e5c2b31
