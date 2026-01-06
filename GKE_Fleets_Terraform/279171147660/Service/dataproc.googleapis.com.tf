resource "google_project_service" "dataproc_googleapis_com" {
  project = "279171147660"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 279171147660/dataproc.googleapis.com
