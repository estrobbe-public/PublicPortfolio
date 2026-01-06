resource "google_project_service" "containerregistry_googleapis_com" {
  project = "401026123434"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 401026123434/containerregistry.googleapis.com
