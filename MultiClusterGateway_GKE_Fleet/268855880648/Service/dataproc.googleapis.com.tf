resource "google_project_service" "dataproc_googleapis_com" {
  project = "268855880648"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 268855880648/dataproc.googleapis.com
