resource "google_project_service" "dataflow_googleapis_com" {
  project = "268855880648"
  service = "dataflow.googleapis.com"
}
# terraform import google_project_service.dataflow_googleapis_com 268855880648/dataflow.googleapis.com
