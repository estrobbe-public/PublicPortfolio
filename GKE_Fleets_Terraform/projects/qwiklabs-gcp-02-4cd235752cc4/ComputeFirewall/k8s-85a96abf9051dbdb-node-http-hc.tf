resource "google_compute_firewall" "k8s_85a96abf9051dbdb_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/cluster-id\":\"85a96abf9051dbdb\"}"
  destination_ranges = ["104.199.84.202"]
  direction          = "INGRESS"
  name               = "k8s-85a96abf9051dbdb-node-http-hc"
  network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-4cd235752cc4/global/networks/default"
  priority           = 1000
  project            = "qwiklabs-gcp-02-4cd235752cc4"
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-gke-cluster-01-ap-2deca5d0-node"]
}
# terraform import google_compute_firewall.k8s_85a96abf9051dbdb_node_http_hc projects/qwiklabs-gcp-02-4cd235752cc4/global/firewalls/k8s-85a96abf9051dbdb-node-http-hc
