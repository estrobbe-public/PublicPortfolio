resource "google_project_service" "dataflow_googleapis_com" {
  project = "401026123434"
  service = "dataflow.googleapis.com"
}
# terraform import google_project_service.dataflow_googleapis_com 401026123434/dataflow.googleapis.com
