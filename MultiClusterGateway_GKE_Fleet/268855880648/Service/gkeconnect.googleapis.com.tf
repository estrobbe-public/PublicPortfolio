resource "google_project_service" "gkeconnect_googleapis_com" {
  project = "268855880648"
  service = "gkeconnect.googleapis.com"
}
# terraform import google_project_service.gkeconnect_googleapis_com 268855880648/gkeconnect.googleapis.com
