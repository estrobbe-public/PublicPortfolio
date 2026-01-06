resource "google_project_service" "dataproc_googleapis_com" {
  project = "788184874362"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 788184874362/dataproc.googleapis.com
