resource "google_project_service" "containerregistry_googleapis_com" {
  project = "788184874362"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 788184874362/containerregistry.googleapis.com
