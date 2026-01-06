resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "788184874362"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 788184874362/cloudbuild.googleapis.com
