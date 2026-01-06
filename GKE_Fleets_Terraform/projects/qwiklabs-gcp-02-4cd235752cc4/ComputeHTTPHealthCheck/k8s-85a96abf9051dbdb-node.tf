resource "google_compute_http_health_check" "k8s_85a96abf9051dbdb_node" {
  check_interval_sec  = 8
  description         = "{\"kubernetes.io/service-name\":\"k8s-85a96abf9051dbdb-node\"}"
  healthy_threshold   = 1
  name                = "k8s-85a96abf9051dbdb-node"
  port                = 10256
  project             = "qwiklabs-gcp-02-4cd235752cc4"
  request_path        = "/healthz"
  timeout_sec         = 1
  unhealthy_threshold = 3
}
# terraform import google_compute_http_health_check.k8s_85a96abf9051dbdb_node projects/qwiklabs-gcp-02-4cd235752cc4/global/httpHealthChecks/k8s-85a96abf9051dbdb-node
