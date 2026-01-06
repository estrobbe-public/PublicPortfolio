resource "google_compute_forwarding_rule" "a9df51ab4b8ca44ef93150585e5c2b31" {
  description = "{\"kubernetes.io/service-name\":\"gcc-dev-ns/frontend\"}"
  ip_address  = "104.199.84.202"
  ip_protocol = "TCP"

  labels = {
    managed-by-cnrm = "true"
  }

  load_balancing_scheme = "EXTERNAL"
  name                  = "a9df51ab4b8ca44ef93150585e5c2b31"
  network_tier          = "PREMIUM"
  port_range            = "80-80"
  project               = "qwiklabs-gcp-02-4cd235752cc4"
  region                = "europe-west1"
  target                = "https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-02-4cd235752cc4/regions/europe-west1/targetPools/a9df51ab4b8ca44ef93150585e5c2b31"
}
# terraform import google_compute_forwarding_rule.a9df51ab4b8ca44ef93150585e5c2b31 projects/qwiklabs-gcp-02-4cd235752cc4/regions/europe-west1/forwardingRules/a9df51ab4b8ca44ef93150585e5c2b31
