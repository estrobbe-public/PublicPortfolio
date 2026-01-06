resource "google_project_service" "container_googleapis_com" {
  project = "268855880648"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 268855880648/container.googleapis.com
