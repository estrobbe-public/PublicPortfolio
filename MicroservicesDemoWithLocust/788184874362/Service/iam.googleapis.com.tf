resource "google_project_service" "iam_googleapis_com" {
  project = "788184874362"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 788184874362/iam.googleapis.com
