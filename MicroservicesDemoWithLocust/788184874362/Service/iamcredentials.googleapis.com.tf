resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "788184874362"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 788184874362/iamcredentials.googleapis.com
