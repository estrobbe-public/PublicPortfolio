resource "google_project_service" "container_googleapis_com" {
  project = "279171147660"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 279171147660/container.googleapis.com
