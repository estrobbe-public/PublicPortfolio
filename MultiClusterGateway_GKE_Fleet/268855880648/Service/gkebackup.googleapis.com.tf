resource "google_project_service" "gkebackup_googleapis_com" {
  project = "268855880648"
  service = "gkebackup.googleapis.com"
}
# terraform import google_project_service.gkebackup_googleapis_com 268855880648/gkebackup.googleapis.com
