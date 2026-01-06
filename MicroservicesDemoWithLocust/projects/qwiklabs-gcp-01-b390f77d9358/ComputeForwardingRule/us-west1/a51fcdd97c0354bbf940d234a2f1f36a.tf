resource "google_compute_forwarding_rule" "a51fcdd97c0354bbf940d234a2f1f36a" {
  description = "{\"kubernetes.io/service-name\":\"default/frontend-external\"}"
  ip_address  = "136.118.91.133"
  ip_protocol = "TCP"

  labels = {
    managed-by-cnrm = "true"
  }

  load_balancing_scheme = "EXTERNAL"
  name                  = "a51fcdd97c0354bbf940d234a2f1f36a"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "qwiklabs-gcp-01-b390f77d9358"
  region                = "us-west1"
  target                = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/targetPools/a51fcdd97c0354bbf940d234a2f1f36a"
}
# terraform import google_compute_forwarding_rule.a51fcdd97c0354bbf940d234a2f1f36a projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/forwardingRules/a51fcdd97c0354bbf940d234a2f1f36a
