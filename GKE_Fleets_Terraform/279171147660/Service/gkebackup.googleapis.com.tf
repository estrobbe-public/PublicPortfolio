resource "google_project_service" "gkebackup_googleapis_com" {
  project = "279171147660"
  service = "gkebackup.googleapis.com"
}
# terraform import google_project_service.gkebackup_googleapis_com 279171147660/gkebackup.googleapis.com
