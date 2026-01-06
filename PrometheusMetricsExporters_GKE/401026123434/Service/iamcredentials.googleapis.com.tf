resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "401026123434"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 401026123434/iamcredentials.googleapis.com
