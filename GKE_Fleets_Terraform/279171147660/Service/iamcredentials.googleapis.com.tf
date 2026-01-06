resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "279171147660"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 279171147660/iamcredentials.googleapis.com
