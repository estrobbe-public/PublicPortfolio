resource "google_compute_health_check" "gkemcs_kube_system_gw_serve404_tcp_80" {
  check_interval_sec = 5
  healthy_threshold  = 2
  name               = "gkemcs-kube-system-gw-serve404-tcp-80"
  project            = "qwiklabs-gcp-01-2e74891f7230"

  tcp_health_check {
    port_specification = "USE_SERVING_PORT"
    proxy_header       = "NONE"
  }

  timeout_sec         = 5
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.gkemcs_kube_system_gw_serve404_tcp_80 projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcs-kube-system-gw-serve404-tcp-80
