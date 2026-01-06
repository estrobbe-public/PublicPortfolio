resource "google_compute_http_health_check" "k8s_329f64ee191b8305_node" {
  check_interval_sec  = 8
  description         = "{\"kubernetes.io/service-name\":\"k8s-329f64ee191b8305-node\"}"
  healthy_threshold   = 1
  name                = "k8s-329f64ee191b8305-node"
  port                = 10256
  project             = "qwiklabs-gcp-01-b390f77d9358"
  request_path        = "/healthz"
  timeout_sec         = 1
  unhealthy_threshold = 3
}
# terraform import google_compute_http_health_check.k8s_329f64ee191b8305_node projects/qwiklabs-gcp-01-b390f77d9358/global/httpHealthChecks/k8s-329f64ee191b8305-node
