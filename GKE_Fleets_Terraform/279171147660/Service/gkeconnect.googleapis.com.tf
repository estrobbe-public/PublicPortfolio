resource "google_project_service" "gkeconnect_googleapis_com" {
  project = "279171147660"
  service = "gkeconnect.googleapis.com"
}
# terraform import google_project_service.gkeconnect_googleapis_com 279171147660/gkeconnect.googleapis.com
