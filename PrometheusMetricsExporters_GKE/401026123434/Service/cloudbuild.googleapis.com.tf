resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "401026123434"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 401026123434/cloudbuild.googleapis.com
