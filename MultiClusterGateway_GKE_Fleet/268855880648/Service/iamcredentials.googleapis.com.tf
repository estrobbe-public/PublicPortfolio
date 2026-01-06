resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "268855880648"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 268855880648/iamcredentials.googleapis.com
