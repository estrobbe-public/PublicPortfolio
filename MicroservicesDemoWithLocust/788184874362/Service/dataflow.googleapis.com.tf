resource "google_project_service" "dataflow_googleapis_com" {
  project = "788184874362"
  service = "dataflow.googleapis.com"
}
# terraform import google_project_service.dataflow_googleapis_com 788184874362/dataflow.googleapis.com
