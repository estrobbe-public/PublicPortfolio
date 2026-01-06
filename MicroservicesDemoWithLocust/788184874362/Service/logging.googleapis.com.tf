resource "google_project_service" "logging_googleapis_com" {
  project = "788184874362"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 788184874362/logging.googleapis.com
