resource "google_compute_backend_service" "gkemcg1_kube_system_gw_serve404_80_7cq0brelgzex" {
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
  health_checks                   = ["https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/healthChecks/gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex"]
  load_balancing_scheme           = "EXTERNAL"

  log_config {
    enable      = true
    sample_rate = 1
  }

  name             = "gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex"
  port_name        = "http"
  project          = "qwiklabs-gcp-01-2e74891f7230"
  protocol         = "HTTP"
  session_affinity = "NONE"
  timeout_sec      = 30
}
# terraform import google_compute_backend_service.gkemcg1_kube_system_gw_serve404_80_7cq0brelgzex projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex
