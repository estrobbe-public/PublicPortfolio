resource "google_compute_health_check" "gkemcg1_kube_system_gw_serve404_80_7cq0brelgzex" {
  check_interval_sec = 15
  healthy_threshold  = 1

  http_health_check {
    port_specification = "USE_SERVING_PORT"
    proxy_header       = "NONE"
    request_path       = "/healthz"
  }

  log_config {
    enable = true
  }

  name                = "gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex"
  project             = "qwiklabs-gcp-01-2e74891f7230"
  timeout_sec         = 15
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.gkemcg1_kube_system_gw_serve404_80_7cq0brelgzex projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex
