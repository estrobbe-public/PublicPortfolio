resource "google_compute_health_check" "gkemcg1_store_store_east_1_8080_w9o6zdn9hpgy" {
  check_interval_sec = 15
  healthy_threshold  = 1

  http_health_check {
    port_specification = "USE_SERVING_PORT"
    proxy_header       = "NONE"
    request_path       = "/"
  }

  log_config {
    enable = true
  }

  name                = "gkemcg1-store-store-east-1-8080-w9o6zdn9hpgy"
  project             = "qwiklabs-gcp-01-2e74891f7230"
  timeout_sec         = 15
  unhealthy_threshold = 2
}
# terraform import google_compute_health_check.gkemcg1_store_store_east_1_8080_w9o6zdn9hpgy projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcg1-store-store-east-1-8080-w9o6zdn9hpgy
