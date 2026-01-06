resource "google_logging_project_sink" "fleet_o11y_279171147660_scope_gcc_dev_team" {
  destination            = "logging.googleapis.com/projects/qwiklabs-gcp-02-4cd235752cc4/locations/global/buckets/fleet-o11y-scope-gcc-dev-team"
  filter                 = "(resource.type=~\"k8s_container|k8s_pod\" AND ((resource.labels.namespace_name=~\"^(gcc-dev-ns)$\" AND ((resource.labels.project_id=\"qwiklabs-gcp-02-4cd235752cc4\" AND resource.labels.location=\"europe-west1\" AND resource.labels.cluster_name=~\"^(gke-cluster-01-ap)$\") OR (resource.labels.project_id=\"qwiklabs-gcp-02-4cd235752cc4\" AND resource.labels.location=\"europe-west1-b\" AND resource.labels.cluster_name=~\"^(gke-cluster-02-st)$\")))))"
  name                   = "fleet-o11y-279171147660-scope-gcc-dev-team"
  project                = "279171147660"
  unique_writer_identity = true
}
# terraform import google_logging_project_sink.fleet_o11y_279171147660_scope_gcc_dev_team 279171147660###fleet-o11y-279171147660-scope-gcc-dev-team
