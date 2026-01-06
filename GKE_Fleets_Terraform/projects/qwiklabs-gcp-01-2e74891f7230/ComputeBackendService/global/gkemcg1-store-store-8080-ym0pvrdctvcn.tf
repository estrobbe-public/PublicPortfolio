resource "google_compute_backend_service" "gkemcg1_store_store_8080_ym0pvrdctvcn" {
  cdn_policy {
    cache_mode                   = "CACHE_ALL_STATIC"
    client_ttl                   = 3600
    default_ttl                  = 3600
    max_ttl                      = 86400
    negative_caching             = true
    serve_while_stale            = 86400
    signed_url_cache_max_age_sec = 0
  }

  connection_draining_timeout_sec = 0
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcg1-store-store-8080-ym0pvrdctvcn"]
  load_balancing_scheme           = "EXTERNAL"

  log_config {
    enable      = true
    sample_rate = 1
  }

  name             = "gkemcg1-store-store-8080-ym0pvrdctvcn"
  port_name        = "http"
  project          = "qwiklabs-gcp-01-2e74891f7230"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = 30
}
# terraform import google_compute_backend_service.gkemcg1_store_store_8080_ym0pvrdctvcn projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-store-store-8080-ym0pvrdctvcn
