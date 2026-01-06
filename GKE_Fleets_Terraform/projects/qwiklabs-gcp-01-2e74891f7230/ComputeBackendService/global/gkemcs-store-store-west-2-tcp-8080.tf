resource "google_compute_backend_service" "gkemcs_store_store_west_2_tcp_8080" {
  connection_draining_timeout_sec = 0
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcs-store-store-west-2-tcp-8080"]
  load_balancing_scheme           = "INTERNAL_SELF_MANAGED"
  name                            = "gkemcs-store-store-west-2-tcp-8080"
  port_name                       = "http"
  project                         = "qwiklabs-gcp-01-2e74891f7230"
  protocol                        = "HTTP"
  session_affinity                = "NONE"
  timeout_sec                     = 30
}
# terraform import google_compute_backend_service.gkemcs_store_store_west_2_tcp_8080 projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-west-2-tcp-8080
