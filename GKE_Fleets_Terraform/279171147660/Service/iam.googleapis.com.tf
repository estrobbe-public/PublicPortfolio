resource "google_project_service" "iam_googleapis_com" {
  project = "279171147660"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 279171147660/iam.googleapis.com
