resource "google_compute_forwarding_rule" "a596174f58c78495087939e87343437b" {
  description = "{\"kubernetes.io/service-name\":\"default/loadgenerator-external\"}"
  ip_address  = "35.247.7.28"
  ip_protocol = "TCP"

  labels = {
    managed-by-cnrm = "true"
  }

  load_balancing_scheme = "EXTERNAL"
  name                  = "a596174f58c78495087939e87343437b"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "qwiklabs-gcp-01-b390f77d9358"
  region                = "us-west1"
  target                = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/targetPools/a596174f58c78495087939e87343437b"
}
# terraform import google_compute_forwarding_rule.a596174f58c78495087939e87343437b projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/forwardingRules/a596174f58c78495087939e87343437b
