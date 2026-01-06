resource "google_compute_backend_service" "gkemcs_kube_system_gw_serve404_tcp_80" {
  connection_draining_timeout_sec = 0
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcs-kube-system-gw-serve404-tcp-80"]
  load_balancing_scheme           = "INTERNAL_SELF_MANAGED"
  name                            = "gkemcs-kube-system-gw-serve404-tcp-80"
  port_name                       = "http"
  project                         = "qwiklabs-gcp-01-2e74891f7230"
  protocol                        = "HTTP"
  session_affinity                = "NONE"
  timeout_sec                     = 30
}
# terraform import google_compute_backend_service.gkemcs_kube_system_gw_serve404_tcp_80 projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-kube-system-gw-serve404-tcp-80
