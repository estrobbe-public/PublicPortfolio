resource "google_project_service" "dataproc_googleapis_com" {
  project = "401026123434"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 401026123434/dataproc.googleapis.com
