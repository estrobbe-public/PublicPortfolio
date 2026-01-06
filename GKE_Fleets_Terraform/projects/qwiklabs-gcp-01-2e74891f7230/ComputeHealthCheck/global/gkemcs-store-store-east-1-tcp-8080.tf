resource "google_compute_health_check" "gkemcs_store_store_east_1_tcp_8080" {
  check_interval_sec = 5
  healthy_threshold  = 2
  name               = "gkemcs-store-store-east-1-tcp-8080"
  project            = "qwiklabs-gcp-01-2e74891f7230"

  tcp_health_check {
    port_specification = "USE_SERVING_PORT"
    proxy_header       = "NONE"
  }

  timeout_sec         = 5
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.gkemcs_store_store_east_1_tcp_8080 projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcs-store-store-east-1-tcp-8080
