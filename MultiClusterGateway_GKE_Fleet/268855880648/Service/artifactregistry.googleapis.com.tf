resource "google_project_service" "artifactregistry_googleapis_com" {
  project = "268855880648"
  service = "artifactregistry.googleapis.com"
}
# terraform import google_project_service.artifactregistry_googleapis_com 268855880648/artifactregistry.googleapis.com
