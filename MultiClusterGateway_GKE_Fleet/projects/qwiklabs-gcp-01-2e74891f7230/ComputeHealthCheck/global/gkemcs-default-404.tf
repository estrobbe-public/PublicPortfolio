resource "google_compute_health_check" "gkemcs_default_404" {
  check_interval_sec = 5
  healthy_threshold  = 2
  name               = "gkemcs-default-404"
  project            = "qwiklabs-gcp-01-2e74891f7230"

  tcp_health_check {
    port_specification = "USE_SERVING_PORT"
    proxy_header       = "NONE"
  }

  timeout_sec         = 5
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.gkemcs_default_404 projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcs-default-404
