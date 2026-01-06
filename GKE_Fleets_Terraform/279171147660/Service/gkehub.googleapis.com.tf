resource "google_project_service" "gkehub_googleapis_com" {
  project = "279171147660"
  service = "gkehub.googleapis.com"
}
# terraform import google_project_service.gkehub_googleapis_com 279171147660/gkehub.googleapis.com
