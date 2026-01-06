resource "google_project_service" "iam_googleapis_com" {
  project = "401026123434"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 401026123434/iam.googleapis.com
