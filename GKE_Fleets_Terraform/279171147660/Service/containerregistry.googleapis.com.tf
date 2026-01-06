resource "google_project_service" "containerregistry_googleapis_com" {
  project = "279171147660"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 279171147660/containerregistry.googleapis.com
