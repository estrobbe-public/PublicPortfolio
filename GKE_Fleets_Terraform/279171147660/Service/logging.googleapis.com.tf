resource "google_project_service" "logging_googleapis_com" {
  project = "279171147660"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 279171147660/logging.googleapis.com
