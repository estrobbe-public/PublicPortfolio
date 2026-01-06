resource "google_project_service" "gkehub_googleapis_com" {
  project = "268855880648"
  service = "gkehub.googleapis.com"
}
# terraform import google_project_service.gkehub_googleapis_com 268855880648/gkehub.googleapis.com
