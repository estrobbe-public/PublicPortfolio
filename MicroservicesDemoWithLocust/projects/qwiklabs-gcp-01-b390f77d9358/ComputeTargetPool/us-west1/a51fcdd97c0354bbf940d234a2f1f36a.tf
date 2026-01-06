resource "google_compute_target_pool" "a51fcdd97c0354bbf940d234a2f1f36a" {
  description      = "{\"kubernetes.io/service-name\":\"default/frontend-external\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-01-b390f77d9358/global/httpHealthChecks/k8s-329f64ee191b8305-node"]
  instances        = ["us-west1-a/gke-central-default-pool-0190644c-13mh", "us-west1-a/gke-central-default-pool-0190644c-fhdv", "us-west1-a/gke-central-default-pool-0190644c-hh8r", "us-west1-a/gke-central-default-pool-0190644c-vgr0"]
  name             = "a51fcdd97c0354bbf940d234a2f1f36a"
  project          = "qwiklabs-gcp-01-b390f77d9358"
  region           = "us-west1"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a51fcdd97c0354bbf940d234a2f1f36a projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/targetPools/a51fcdd97c0354bbf940d234a2f1f36a
