resource "google_project_service" "dataflow_googleapis_com" {
  project = "279171147660"
  service = "dataflow.googleapis.com"
}
# terraform import google_project_service.dataflow_googleapis_com 279171147660/dataflow.googleapis.com
