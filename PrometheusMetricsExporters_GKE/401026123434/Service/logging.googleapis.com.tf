resource "google_project_service" "logging_googleapis_com" {
  project = "401026123434"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 401026123434/logging.googleapis.com
