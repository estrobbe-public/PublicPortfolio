resource "google_compute_firewall" "k8s_329f64ee191b8305_node_http_hc" {
  allow {
    ports    = ["10256"]
    protocol = "tcp"
  }

  description        = "{\"kubernetes.io/cluster-id\":\"329f64ee191b8305\"}"
  destination_ranges = ["136.118.91.133"]
  direction          = "INGRESS"
  name               = "k8s-329f64ee191b8305-node-http-hc"
  network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
  priority           = 1000
  project            = "qwiklabs-gcp-01-b390f77d9358"
  source_ranges      = ["130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22", "35.191.0.0/16"]
  target_tags        = ["gke-central-d73ba8af-node"]
}
# terraform import google_compute_firewall.k8s_329f64ee191b8305_node_http_hc projects/qwiklabs-gcp-01-b390f77d9358/global/firewalls/k8s-329f64ee191b8305-node-http-hc
