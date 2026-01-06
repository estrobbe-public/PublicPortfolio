resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "279171147660"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 279171147660/cloudbuild.googleapis.com
