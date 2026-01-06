resource "google_project_service" "artifactregistry_googleapis_com" {
  project = "401026123434"
  service = "artifactregistry.googleapis.com"
}
# terraform import google_project_service.artifactregistry_googleapis_com 401026123434/artifactregistry.googleapis.com
