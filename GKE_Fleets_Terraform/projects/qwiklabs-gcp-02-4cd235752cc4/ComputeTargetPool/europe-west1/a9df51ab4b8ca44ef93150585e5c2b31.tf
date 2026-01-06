resource "google_compute_target_pool" "a9df51ab4b8ca44ef93150585e5c2b31" {
  description      = "{\"kubernetes.io/service-name\":\"gcc-dev-ns/frontend\"}"
  health_checks    = ["https://www.googleapis.com/compute/beta/projects/qwiklabs-gcp-02-4cd235752cc4/global/httpHealthChecks/k8s-85a96abf9051dbdb-node"]
  instances        = ["europe-west1-b/gk3-gke-cluster-01-ap-pool-1-a2a74d7e-qbnm", "europe-west1-c/gk3-gke-cluster-01-ap-pool-1-60568f4b-s6s4", "europe-west1-d/gk3-gke-cluster-01-ap-pool-1-3cfa8509-gdjf"]
  name             = "a9df51ab4b8ca44ef93150585e5c2b31"
  project          = "qwiklabs-gcp-02-4cd235752cc4"
  region           = "europe-west1"
  session_affinity = "NONE"
}
# terraform import google_compute_target_pool.a9df51ab4b8ca44ef93150585e5c2b31 projects/qwiklabs-gcp-02-4cd235752cc4/regions/europe-west1/targetPools/a9df51ab4b8ca44ef93150585e5c2b31
